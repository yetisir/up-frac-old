import os
import shutil
from math import *
from caeModules import *
from odbAccess import *
from parameters import *
import pickle
import subprocess
          
def fWrite(stuff):
    with open('log.txt', 'a') as f:
        f.write(str(stuff)+'\n')
        
def sketchPart(name, gp):
    s = mdb.models['Model-1'].ConstrainedSketch(
        name='__profile__',sheetSize=10.0)
    for i in range(0, len(gp)-1):
        s.Line(point1=(gp[i][0], gp[i][1]), point2=(gp[i+1][0], gp[i+1][1]))
    p = mdb.models['Model-1'].Part(name=name, dimensionality=TWO_D_PLANAR,
                                   type=DEFORMABLE_BODY)
    p.BaseShell(sketch=s)
    del mdb.models['Model-1'].sketches['__profile__']
    
def defineMaterial(name, density, elasticModulus, poissonsRatio):
    def tablulateVectors(vec1, vec2):
        vecLength = min(len(vec1), len(vec2))
        tabulatedData = []
        for i in range(vecLength):
            tabulatedData.append((vec1[i], vec2[i]))
        return tabulatedData
            
    mat = mdb.models['Model-1'].Material(name=name)
    mat.Density(table=((density, ), ))
    mat.Elastic(table=((elasticModulus, poissonsRatio), ))
    
    #****Ductile Damage Plasticity
    #mat.DuctileDamageInitiation(table=((fractureStrain, stressTriaxiality, strainRate), ))
    #mat.ductileDamageInitiation.DamageEvolution(type=DISPLACEMENT, 
    #    table=((displacementAtFailure, ), ))    
    #mat.Plastic(table=((yeildStress, plasticStrain), ))

    #****Concrete Damage Plasticity
    mat.ConcreteDamagedPlasticity(table=
        ((dilationAngle, eccentricity, fb0fc0, variableK, viscousParameter), ))
    mat.concreteDamagedPlasticity.ConcreteCompressionHardening(
        table=(tablulateVectors(compressiveYeildStress, inelasticStrain)))
    mat.concreteDamagedPlasticity.ConcreteTensionStiffening(
        table=(tablulateVectors(tensileYeildStress, crackingStrain)))
        
    mat.concreteDamagedPlasticity.ConcreteCompressionDamage(
        table=(tablulateVectors(compressiveDamage, inelasticStrain)))
    mat.concreteDamagedPlasticity.ConcreteTensionDamage(
        table=(tablulateVectors(tensileDamage, crackingStrain)))
        
    #****Mohr-Coulomb Plasticity
    #mat.MohrCoulombPlasticity(table=((frictionAngle, 5.0), ))
    #mat.mohrCoulombPlasticity.MohrCoulombHardening(table=((cohesion, 0.0), ))
    #mat.mohrCoulombPlasticity.TensionCutOff(temperatureDependency=OFF, dependencies=0,
    #                                        table=((0.0, 0.0), ))

def assignSection(name, part, location, material):
    mdb.models['Model-1'].HomogeneousSolidSection(name=name, material=material,
                                                  thickness=None)
    p = mdb.models['Model-1'].parts[part]
    f = p.faces
    faces = f.findAt((location, ))
    region = p.Set(faces=faces, name=name)
    p.SectionAssignment(region=region, sectionName=name, offset=0.0,
                        offsetType=MIDDLE_SURFACE, offsetField='',
                        thicknessAssignment=FROM_SECTION)

def meshPart(size, part, location, elementType, elementShape):
    p = mdb.models['Model-1'].parts[part]
    p.seedPart(size=size, deviationFactor=0.1, minSizeFactor=0.1)
    elemType = mesh.ElemType(elemCode=elementType)
    pickedRegions =(p.faces.findAt((location, )), )
    p.setElementType(regions=pickedRegions, elemTypes=(elemType,))
    pickedRegions = p.faces.findAt((location, ))
    p.setMeshControls(regions=pickedRegions, elemShape=elementShape)
    p.generateMesh()

def createInstance(name, part):
    a = mdb.models['Model-1'].rootAssembly
    a.DatumCsysByDefault(CARTESIAN)
    p = mdb.models['Model-1'].parts[part]
    a.Instance(name=name, part=p, dependent=ON)

def applyVelocityBoundaryCondition(name, instance, step, location, v):
    a = mdb.models['Model-1'].rootAssembly
    edges1 = a.instances[instance].edges.findAt((location, ))
    region = a.Set(edges=edges1, name=name)
    # mdb.models['Model-1'].PeriodicAmplitude(name='Amp-1', timeSpan=STEP, 
        # frequency=pi/simulationTime, start=0.0, a_0=0, data=((0.0, 1.0), ))
    mdb.models['Model-1'].TabularAmplitude(name='Amp-1', timeSpan=STEP, 
        smooth=SOLVER_DEFAULT, data=velocityTable)
    mdb.models['Model-1'].VelocityBC(name=name, createStepName=step, 
        region=region, v1=v[0], v2=v[1], vr3=v[2], amplitude='Amp-1', 
        localCsys=None, distributionType=UNIFORM, fieldName='')  

def applyDisplacementBoundaryCondition(name, instance, step, location, u):
    a = mdb.models['Model-1'].rootAssembly
    edges1 = a.instances[instance].edges.findAt((location, ))
    region = a.Set(edges=edges1, name=name)
    mdb.models['Model-1'].DisplacementBC(name=name, createStepName=step, 
        region=region, u1=u[0], u2=u[1], ur3=u[2], amplitude=UNSET, 
        distributionType=UNIFORM, fieldName='', localCsys=None)    
        
def applyConfiningStress(name, instance, step, location, stress):
    a = mdb.models['Model-1'].rootAssembly
    edges1 = a.instances[instance].edges.findAt((location, ))
    region = a.Surface(side1Edges=edges1, name=name)
    mdb.models['Model-1'].TabularAmplitude(name='Amp-2', timeSpan=STEP, 
        smooth=SOLVER_DEFAULT, data=((0.0, 0.0), (5, 1)))
    mdb.models['Model-1'].Pressure(name=name, createStepName=step, 
        region=region, distributionType=UNIFORM, field='', magnitude=stress, 
        amplitude='Amp-2')

def createStaticStep(name, previous):
    mdb.models['Model-1'].StaticStep(name=name, previous=previous, timePeriod=simulationTime,
                                     maxNumInc=1000, initialInc=0.5, minInc=0.001,
                                     maxInc=0.5, matrixSolver=DIRECT,
                                     matrixStorage=UNSYMMETRIC, nlgeom=largeDef)

def createExplicitDynamicStep(name, previous):
    mdb.models['Model-1'].ExplicitDynamicsStep(name=name, previous=previous, 
                                                timePeriod=simulationTime)

def applyGravity(magnitude, stepName):
    mdb.models['Model-1'].Gravity(name='Gravity', createStepName=stepName, comp2=magnitude,
                                  distributionType=UNIFORM, field='')

def buildModel():
    sketchPart(partName, gridPoints)
    defineMaterial(materialName, density, elasticModulus, poissonsRatio)
    assignSection(sectionName, partName, sectionLocation, materialName)
    meshPart(meshSize, partName, sectionLocation, elementType, elementShape)
    createInstance(instanceName, partName)

    createExplicitDynamicStep(steps[1], steps[0])
    createExplicitDynamicStep(steps[2],steps[1])

    #applyGravity(gravityMagnitude, stepName)
    if confiningStress != 0:
        applyConfiningStress('Right', instanceName, steps[1], boundaries['Right'], -confiningStress)
        applyConfiningStress('Left', instanceName, steps[1], boundaries['Left'], -confiningStress)
   
    applyDisplacementBoundaryCondition('Bottom', instanceName, steps[1], boundaries['Bottom'],
        (UNSET, SET, SET))
    applyDisplacementBoundaryCondition('Top', instanceName, steps[1], boundaries['Top'], 
        (UNSET, SET, SET))
    mdb.models['Model-1'].boundaryConditions['Top'].setValuesInStep(stepName=steps[2], u2=FREED)

    applyVelocityBoundaryCondition('vTop', instanceName, steps[2], boundaries['Top'], (UNSET, v, SET))

def getStress(jobName, stepName, instanceName):
    odb = openOdb(jobName+'.odb')
    allElements = odb.rootAssembly.instances[instanceName].elements    
    allFrames = odb.steps[stepName].frames
    
    element = allElements[0]
    stressHistory = [[0 for x in range(3)] for x in range(len(allFrames))] 
    for i in range(len(allFrames)):
        stress = allFrames[i].fieldOutputs['S'].getSubset(position=CENTROID).values[0].data
        stressHistory[i][0] = stress[0]
        stressHistory[i][1] = stress[1]
        stressHistory[i][2] = stress[3]
    odb.close()
    return stressHistory

def getStrain(jobName, stepName, instanceName):
    odb = openOdb(jobName+'.odb')
    allElements = odb.rootAssembly.instances[instanceName].elements    
    allFrames = odb.steps[stepName].frames
    
    element = allElements[0]
    strainHistory = [[0 for x in range(3)] for x in range(len(allFrames))] 
    strainShift = allFrames[0].fieldOutputs['LE'].getSubset(position=CENTROID).values[0].data

    for i in range(len(allFrames)):
        strain = allFrames[i].fieldOutputs['LE'].getSubset(position=CENTROID).values[0].data
        strainHistory[i][0] = strain[0]#-strainShift[0]
        strainHistory[i][1] = strain[1]#-strainShift[1]
        strainHistory[i][2] = strain[3]#-strainShift[3]
    odb.close()
    return strainHistory
    
def getTime(jobName, stepName, instanceName):
    odb = openOdb(jobName+'.odb')
    allFrames = odb.steps[stepName].frames
    timeHistory = [allFrames[x].frameValue for x in range(len(allFrames))] 
    #for i in range(len(allFrames)):
    #    timeHistory[i] = allFrames[i].frameValue
    odb.close()
    return timeHistory
    
def main():
    open('log.txt', 'w').close()
    buildModel()
    mdb.Job(name='Job-1', model='Model-1', description='', type=ANALYSIS, atTime=None,
            waitMinutes=0, waitHours=0, queue=None, memory=90, memoryUnits=PERCENTAGE,
            getMemoryFromAnalysis=True, explicitPrecision=SINGLE,
            nodalOutputPrecision=SINGLE, echoPrint=OFF,
            modelPrint=OFF, contactPrint=OFF, historyPrint=OFF, userSubroutine='',
            scratch='', parallelizationMethodExplicit=DOMAIN, numDomains=1, 
            activateLoadBalancing=False, multiprocessingMode=DEFAULT, numCpus=1, numGPUs=0)
    mdb.jobs['Job-1'].submit(consistencyChecking=OFF)
    
    timeHistory = getTime('Job-1', steps[2], instanceName)
    stressHistory = getStress('Job-1', steps[2], instanceName)
    strainHistory = getStrain('Job-1', steps[2], instanceName)
    file = open('rawHistory.pkl', 'wb')
    pickle.dump(timeHistory, file)
    pickle.dump(stressHistory, file)
    pickle.dump(strainHistory, file)
    file.close()
if __name__ == '__main__': main()

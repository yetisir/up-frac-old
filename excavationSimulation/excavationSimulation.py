import os
import shutil
from math import *
from caeModules import *
from odbAccess import *
from parameters import *
import pickle
import subprocess

simulationTime = 20
meshSize = 0.2
sectionLocation = (1, 1, 0.0)
          
def fWrite(stuff):
    with open('log.txt', 'a') as f:
        f.write(str(stuff)+'\n')
        
def sketchPart(name, gp):
    s = mdb.models['Model-1'].ConstrainedSketch(
        name='__profile__',sheetSize=20.0)
        
    g = s.geometry
    s.rectangle(point1=(0.0, 0.0), point2=(20.0, 20.0))
    s.CircleByCenterPerimeter(center=(10.0, 10.0), point1=(10, 12))

    p = mdb.models['Model-1'].Part(name=name, dimensionality=TWO_D_PLANAR,
                                   type=DEFORMABLE_BODY)
    p.BaseShell(sketch=s)
    s.unsetPrimaryObject()
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
    p.seedPart(size=size, deviationFactor=0.1, minSizeFactor=0.01)
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

def applyBoundaryCondition(instance):
    a = mdb.models['Model-1'].rootAssembly
    
    faces1 = a.instances[instance].faces.findAt((sectionLocation, ))
    region = a.Set(faces=faces1, name='Set-1')
    # mdb.models['Model-1'].Stress(name='Predefined Field-1', region=region, 
        # distributionType=UNIFORM, sigma11=10.0e4, sigma22=30.0e4, sigma33=15.0e4, 
        # sigma12=20.0e4, sigma13=None, sigma23=None)
    mdb.models['Model-1'].GeostaticStress(name='Predefined Field-2', region=region, 
        stressMag1=-10000000.0, vCoord1=0.0, stressMag2=-9800000.0, vCoord2=20.0, 
        lateralCoeff1=0.4, lateralCoeff2=0.4)    

    edges1 = a.instances[instance].edges.findAt(((0, 10, 0), ))
    region = a.Set(edges=edges1, name='Set-2')
    mdb.models['Model-1'].DisplacementBC(name='BC-1', createStepName='Initial', 
        region=region, u1=SET, u2=UNSET, ur3=SET, amplitude=UNSET, 
        distributionType=UNIFORM, fieldName='', localCsys=None)   
    edges1 = a.instances[instance].edges.findAt(((20, 10, 0), ))
    region = a.Set(edges=edges1, name='Set-3')
    mdb.models['Model-1'].DisplacementBC(name='BC-2', createStepName='Initial', 
        region=region, u1=SET, u2=UNSET, ur3=SET, amplitude=UNSET, 
        distributionType=UNIFORM, fieldName='', localCsys=None)   
    edges1 = a.instances[instance].edges.findAt(((10, 0, 0), ))
    region = a.Set(edges=edges1, name='Set-4')
    mdb.models['Model-1'].DisplacementBC(name='BC-4', createStepName='Initial', 
        region=region, u1=UNSET, u2=SET, ur3=SET, amplitude=UNSET, 
        distributionType=UNIFORM, fieldName='', localCsys=None)   

    # edges1 = a.instances[instance].edges.findAt(((10, 8, 0), ))
    # region = a.Set(edges=edges1, name='Set-5')
    # mdb.models['Model-1'].DisplacementBC(name='BC-5', createStepName='Initial', 
        # region=region, u1=SET, u2=SET, ur3=SET, amplitude=UNSET, 
        # distributionType=UNIFORM, fieldName='', localCsys=None)   
    # mdb.models['Model-1'].boundaryConditions['BC-5'].setValuesInStep(stepName=steps[2], u2=FREED, u1=FREED)

        
    # edges1 = a.instances[instance].edges.findAt(((5, 0, 0), ))
    # region = a.Set(edges=edges1, name='Set-2')
    # mdb.models['Model-1'].DisplacementBC(name='BC-2', createStepName='Initial', 
        # region=region, u1=UNSET, u2=SET, ur3=UNSET, amplitude=UNSET, 
        # distributionType=UNIFORM, fieldName='', localCsys=None)
        
    edges1 = a.instances[instance].edges.findAt(((10, 20, 0.0), ))
    region = a.Surface(side1Edges=edges1, name='Surf-1')
    mdb.models['Model-1'].Pressure(name='Load-1', createStepName='Step-1', 
        region=region, distributionType=UNIFORM, field='', magnitude=10000000.0, 
        amplitude=UNSET)
    # edges1 = a.instances[instance].edges.findAt(((0, 10, 0.0), ))
    # region = a.Surface(side1Edges=edges1, name='Surf-2')
    # mdb.models['Model-1'].Pressure(name='Load-2', createStepName='Step-1', 
        # region=region, distributionType=UNIFORM, field='', magnitude=8000000.0, 
        # amplitude=UNSET)
    # edges1 = a.instances[instance].edges.findAt(((20, 10, 0.0), ))
    # region = a.Surface(side1Edges=edges1, name='Surf-3')
    # mdb.models['Model-1'].Pressure(name='Load-3', createStepName='Step-1', 
        # region=region, distributionType=UNIFORM, field='', magnitude=8000000.0, 
        # amplitude=UNSET)

    # edges1 = a.instances[instance].edges.findAt(((0, 5, 0.0), ))
    # region = a.Surface(side1Edges=edges1, name='Surf-4')
    # # mdb.models['Model-1'].TabularAmplitude(name='Amp-1', timeSpan=STEP, 
        # # smooth=SOLVER_DEFAULT, data=((0.0, 0.0), (simulationTime/2, 1)))
    # mdb.models['Model-1'].Pressure(name='Load-4', createStepName='Step-1', 
        # region=region, distributionType=UNIFORM, field='', magnitude=2000000.0, 
        # amplitude='Amp-1')
        
    # # edges1 = a.instances[instance].edges.findAt(((10, 5, 0.0), ))
    # # region = a.Set(edges=edges1, name='Set-3')
    # # mdb.models['Model-1'].DisplacementBC(name='BC-3', createStepName='Initial', 
        # # region=region, u1=SET, u2=UNSET, ur3=UNSET, amplitude=UNSET, 
        # # distributionType=UNIFORM, fieldName='', localCsys=None)   

    # edges1 = a.instances[instance].edges.findAt(((5, 10, 0.0), ))
    # region = a.Surface(side1Edges=edges1, name='Surf-2')
    # mdb.models['Model-1'].TabularAmplitude(name='Amp-1', timeSpan=STEP, 
        # smooth=SOLVER_DEFAULT, data=((0.0, 0.0), (simulationTime/2, 1)))
    # mdb.models['Model-1'].Pressure(name='Load-2', createStepName='Step-1', 
        # region=region, distributionType=UNIFORM, field='', magnitude=30000000.0, 
        # amplitude='Amp-1')

    # edges1 = a.instances[instance].edges.findAt(((5, 4.5, 0.0), ))
    # region = a.Surface(side1Edges=edges1, name='Surf-3')
    # mdb.models['Model-1'].TabularAmplitude(name='Amp-2', timeSpan=STEP, 
        # smooth=SOLVER_DEFAULT, data=((simulationTime/2, 0), (simulationTime*3/4, 1), (simulationTime, 0.0)))
    # mdb.models['Model-1'].Pressure(name='Load-3', createStepName='Step-1', 
        # region=region, distributionType=UNIFORM, field='', magnitude=40000000.0, 
        # amplitude='Amp-2')

    # edges1 = a.instances[instance].edges.findAt(((0.0, 80.0, 0.0), ))
    # region = a.Set(edges=edges1, name='Set-1')  
    # mdb.models['Model-1'].TabularAmplitude(name='Amp-1', timeSpan=STEP, 
        # smooth=SOLVER_DEFAULT, data=((0.0, 0.0), (simulationTime/4, 1), (simulationTime*3/4, -1), (simulationTime, 0.0)))
    # mdb.models['Model-1'].VelocityBC(name='BC-1', createStepName=steps[1], 
        # region=region, v1=UNSET, v2=0.1, vr3=UNSET, amplitude='Amp-1', 
        # localCsys=None, distributionType=UNIFORM, fieldName='')                
def createStaticStep(name):
    # mdb.models['Model-1'].StaticStep(name=name, previous='Initial', timePeriod=simulationTime,
                                     # maxNumInc=1000, initialInc=0.5, minInc=0.001,
                                     # maxInc=0.5, matrixSolver=DIRECT,
                                     # matrixStorage=UNSYMMETRIC, nlgeom=largeDef)
    mdb.models['Model-1'].GeostaticStep(name=name, previous='Initial')
def createImplicitDynamicStep(name):
    mdb.models['Model-1'].ImplicitDynamicsStep(name=name, previous=steps[1])


def applyGravity(magnitude, stepName):
    mdb.models['Model-1'].Gravity(name='Gravity', createStepName=stepName, comp2=magnitude,
                                  distributionType=UNIFORM, field='')

def buildModel():
    sketchPart(partName, gridPoints)
    defineMaterial(materialName, density, elasticModulus, poissonsRatio)
    assignSection(sectionName, partName, sectionLocation, materialName)
    meshPart(meshSize, partName, sectionLocation, elementType, elementShape)
    createInstance(instanceName, partName)

    # for j in range(len(v[0])):
        # applyBoundaryCondition(vNames[0][j], instanceName, steps[0],
            # boundaries[vNames[0][j]], v[0][j])
    createStaticStep(steps[1])
    createImplicitDynamicStep(steps[2])
    
    
    applyBoundaryCondition(instanceName)
    
    mdb.models['Model-1'].FieldOutputRequest(name='F-Output-2', 
    createStepName='Step-1', variables=('DAMAGEC', 'DAMAGET'))
		
    #applyGravity(gravityMagnitude, 'Step-1')

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
    
if __name__ == '__main__': main()

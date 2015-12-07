from math import *
from caeModules import *
from odbAccess import *
from parameters import *

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
    mat = mdb.models['Model-1'].Material(name=name)
    mat.Density(table=((density, ), ))
    mat.Elastic(table=((elasticModulus, poissonsRatio), ))
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

def applyBoundaryCondition(name, instance, step, location, v):
    a = mdb.models['Model-1'].rootAssembly
    edges1 = a.instances[instance].edges.findAt((location, ))
    region = a.Set(edges=edges1, name=name)
    # mdb.models['Model-1'].PeriodicAmplitude(name='Amp-1', timeSpan=STEP, 
        # frequency=pi/simulationTime, start=0.0, a_0=0, data=((0.0, 1.0), ))
    mdb.models['Model-1'].VelocityBC(name=name, createStepName=step, 
        region=region, v1=v[0], v2=v[1], vr3=v[2], amplitude=UNSET, 
        localCsys=None, distributionType=UNIFORM, fieldName='')    

def createStaticStep(name):
    mdb.models['Model-1'].StaticStep(name=name, previous='Initial', timePeriod=10.0,
                                     maxNumInc=1000, initialInc=0.1, minInc=0.001,
                                     maxInc=0.1, matrixSolver=DIRECT,
                                     matrixStorage=UNSYMMETRIC, nlgeom=largeDef)

def createExplicitDynamicStep(name):
    mdb.models['Model-1'].ExplicitDynamicsStep(name=name, previous='Initial', 
                                                timePeriod=10.0)

def applyGravity(magnitude, stepName):
    mdb.models['Model-1'].Gravity(name='Gravity', createStepName=stepName, comp2=magnitude,
                                  distributionType=UNIFORM, field='')

def buildModel():
    sketchPart(partName, gridPoints)
    defineMaterial(materialName, density, elasticModulus, poissonsRatio)
    assignSection(sectionName, partName, sectionLocation, materialName)
    meshPart(meshSize, partName, sectionLocation, elementType, elementShape)
    createInstance(instanceName, partName)

    for i in range(len(v[0])):
        applyBoundaryCondition(vNames[0][i], instanceName, steps[0],
            boundaries[vNames[0][i]], v[0][i])
    createStaticStep(steps[1])
    
    for i in range(len(v[1])):
        applyBoundaryCondition(vNames[1][i], instanceName, steps[1],
            boundaries[vNames[1][i]], v[1][i])
		
    #applyGravity(gravityMagnitude, stepName)
    
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

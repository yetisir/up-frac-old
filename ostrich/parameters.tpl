partName = 'Block'
gridPoints = [[0, 0], [10, 0], [10, 10], [0, 10], [0, 0]]

materialName = 'Material-1'
density = 2700.0
elasticModulus = $E #12.0e9
poissonsRatio = $nu #0.3
#frictionAngle = 27.0
#cohesion = 20000.0
#fractureStrain = 0.001
#stressTriaxiality = 1
#strainRate = 0.001
#displacmentAtFailure = 1
#yeildStress = 500000000
#plasticStrain = 0
dilationAngle = $psi
eccentricity = 0.1
fb0fc0 = 1.16
variableK = $K
viscousParameter = 0
compressiveYeildStress = $cys
inelasticStrain = 0
tensileYeildStress = 50000
crackingStrain = 0
    
#gravityMagnitude = -9.8

sectionName = 'Block'
sectionLocation = (5.0, 5.0, 0.0)

simulationTime = 20
numberOfSteps = 40

try:
    from abaqusConstants import *
        
    elementType = CPE4R
    elementShape = QUAD
    meshSize = 10

    instanceName = 'BLOCK-1'

    boundaries = {'Bottom': (5.0, 0.0, 0.0), 'Top':(5.0, 10.0, 0.0), 'Left':(0.0, 5.0, 0.0), 'Right':(10.0, 5.0, 0.0)}

    steps = ('Initial', 'Step-1', 'Step-2')
    v = (((UNSET, SET, UNSET), ), ((UNSET, -0.01, UNSET), ), ((SET, UNSET, UNSET), ), ((UNSET, UNSET, UNSET), ))
    vNames = (('Bottom', ), ('Top', ), ('Left', ), ('Right', ))
    largeDef=ON
except ImportError: pass
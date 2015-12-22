partName = 'Block'
gridPoints = [[0, 0], [10, 0], [10, 10], [0, 10], [0, 0]]

materialName = 'Material-1'
density = 2700.0
elasticModulus = $E #12.0e9
poissonsRatio = $nu #0.3

#****Mohr-Coulomb Plasticity
#frictionAngle = 27.0
#cohesion = 20000.0

#*****Ductile Damage Plasticity
#fractureStrain = 0.001
#stressTriaxiality = 1
#strainRate = 0.001
#displacmentAtFailure = 1
#yeildStress = 500000000
#plasticStrain = 0

#****Concrete Damage Plasticity
dilationAngle = 10.000000E+00 #this will be same as UDEC
eccentricity = 0.1 #default
fb0fc0 = 1.16 #default
variableK = 6.700000E-01 #default
viscousParameter = 0 #default
compressiveYeildStress = ($cys1, $cys2)
inelasticStrain = (0, $is)
tensileYeildStress = 50000
crackingStrain = 0

compressiveDamage = (0, 0.5)
tensileDamage = 0

    
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

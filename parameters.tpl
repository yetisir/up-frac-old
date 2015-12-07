from abaqusConstants import *

partName = 'Block'
gridPoints = [[0, 0], [10, 0], [10, 10], [0, 10], [0, 0]]

materialName = 'Material-1'
density = 2700.0
elasticModulus = $E #12.0e9
poissonsRatio = $nu #0.3
#frictionAngle = 27.0
#cohesion = 20000.0

sectionName = 'Block'
sectionLocation = (5.0, 5.0, 0.0)
    
elementType = CPE4R
elementShape = QUAD
meshSize = 10

instanceName = 'BLOCK-1'

boundaries = {'Bottom': (5.0, 0.0, 0.0), 'Top':(5.0, 10.0, 0.0)}

steps = ('Initial', 'Step-1')
v = (((UNSET, SET, UNSET), ), ((UNSET, -0.05, UNSET), ))
vNames = (('Bottom', ), ('Top', ))
largeDef=ON

simulationTime = 10

#gravityMagnitude = -9.8
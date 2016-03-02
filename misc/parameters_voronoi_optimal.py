import math
def process1(lista):
    import numbers
    if isinstance(lista, numbers.Real):
        lista = (lista, )
    return lista
def process2(lista, listb):
    import numbers
    if isinstance(lista, numbers.Real):
        lista = (lista, )*len(listb)
    if isinstance(listb, numbers.Real):
        listb = (listb, )*len(lista)
    return lista, listb
def multiply(lista, listb):
    lista, listb = process2(lista, listb)
    return [a*b for a,b in zip(lista,listb)]
def divide(lista, listb):
    lista, listb = process2(lista, listb)
    return [a/b if b != 0 else float('NaN') for a,b in zip(lista,listb)]
def add(lista, listb):
    lista, listb = process2(lista, listb)
    return [a+b for a,b in zip(lista,listb)]
def subtract(lista, listb):
    lista, listb = process2(lista, listb)
    return [a-b for a,b in zip(lista,listb)]
def exp(lista):
    import math
    lista = process1(lista)
    return [math.exp(x) for x in lista]
def log(lista):
    import math
    lista = process1(lista)
    return [math.log(x) if x > 0 else float('NaN') for x in lista]
def power(lista, listb):
    import math
    lista, listb = process2(lista, listb)
    return [a**b for a, b in zip(lista,listb)]
def fWrite(stuff):
    with open('log.txt', 'a') as f:
        f.write(str(stuff)+'\n')

mName = 'voronoi5(t)'
    
partName = 'Block'
gridPoints = [[0, 0], [10, 0], [10, 10], [0, 10], [0, 0]]

materialName = 'Material-1'
density = 2700000.0
elasticModulus = 7.522587E+09
poissonsRatio = 3.5221441E-01 #0.3

#****Concrete Damage Plasticity
dilationAngle = 10 #this will be same as UDEC
eccentricity = 0.1 #default
fb0fc0 = 1.16 #default
variableK = 6.700000E-01 #default
viscousParameter = 0 #default

numStrainPoints = 100
inelasticStrain = divide(range(0, numStrainPoints+1), numStrainPoints/0.0126506482045)
h = 5.409187E-03
k = 1.057716E+07
d = 3.069959E+06
b = 1e6
a = (d - k)/h**2
compressiveYeildStress = add(multiply(a, power(subtract(inelasticStrain, h), 2)), k)
compressiveYeildStress = [b if x < b else x for x in compressiveYeildStress]
compressiveDamageScaling = 8.498437E-01
E = elasticModulus
m = divide(1, add(divide(compressiveYeildStress, E), inelasticStrain))
m = min(m)*compressiveDamageScaling
compressiveDamage = multiply(m, inelasticStrain)

if '(t)' in mName:
	crackingStrain = divide(range(0, numStrainPoints+1), numStrainPoints/0.000579457200396)
elif '(c)' in mName:
	crackingStrain = divide(range(0, numStrainPoints+1), numStrainPoints/0.000455606834354)
N = 2.241357E+06
tLambda = -2.210000E+03
tensileYeildStress = multiply(N, exp(multiply(tLambda, crackingStrain)))
tensileDamageScaling = 9.284359E-01
n = multiply(tensileDamageScaling, multiply(divide(log(subtract(1.00, divide(crackingStrain, add(divide(tensileYeildStress, elasticModulus), crackingStrain)))), log(add(1, crackingStrain))), -1))
n[0] = elasticModulus/N
n = min(n)
tensileDamage = subtract(1, divide(1, power(add(1, crackingStrain), n)))
#gravityMagnitude = -9.8

sectionName = 'Block'
sectionLocation = (10/2, 10/2, 0.0)

simulationTime = 20
numberOfSteps = 50

confiningStress = -10000000.0

try:
    from abaqusConstants import *
        
    elementType = CPE4R
    elementShape = QUAD
    meshSize = 10

    instanceName = 'BLOCK-1'

    boundaries = {'Bottom': (10/2, 0.0, 0.0), 'Top':(10/2, 10, 0.0), 'Left':(0.0, 10/2, 0.0), 'Right':(10, 10/2, 0.0)}

    steps = ('Initial', 'Step-1', 'Step-2')
    v = 0.01
    vNames = (('Bottom', ), ('Top', ), ('Left', ), ('Right', ))
    velocityTable = ((0, -1), (8.0, -1), (12.0, 1), (20, 1))

    largeDef=ON
except ImportError: pass
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
    
partName = 'Block'
gridPoints = [[0, 0], [$$mSize, 0], [$$mSize, $$mSize], [0, $$mSize], [0, 0]]

materialName = 'Material-1'
density = $$rho
elasticModulus = $$E
poissonsRatio = $$nu #0.3

#****Concrete Damage Plasticity
dilationAngle = $$dAngle #this will be same as UDEC
eccentricity = 0.1 #default
fb0fc0 = 1.16 #default
variableK = 6.700000E-01 #default
viscousParameter = 0 #default

numStrainPoints = 100
inelasticStrain = divide(range(0, numStrainPoints+1), numStrainPoints/$$maxStrain)
h = $h
k = $k
d = $dd
a = (d - k)/h**2
compressiveYeildStress = add(multiply(a, power(subtract(inelasticStrain, h), 2)), k)
compressiveDamageScaling = $cd
E = elasticModulus
ei = inelasticStrain[-1]
# m = compressiveDamageScaling*(b + 2*E*ei - (b**2 + 4*a**2*ei**2 + 4*E*b*ei + 4*a*b*ei + 4*E*a*ei**2)**(1/2) + 2*a*ei)/(2*(E*ei**2 + a*ei**2))
m = compressiveDamageScaling*((3*d*ei**2 + d*h**2 - 3*ei**2*k - math.sqrt(9*d**2*ei**4 + d**2*h**4 + 9*ei**4*k**2 - 8*d**2*ei*h**3 - 24*d**2*ei**3*h - 24*ei**3*h*k**2 + 22*d**2*ei**2*h**2 + 16*ei**2*h**2*k**2 - 18*d*ei**4*k + 4*E*d*ei*h**4 + 8*d*ei*h**3*k + 48*d*ei**3*h*k - 8*E*d*ei**2*h**3 + 4*E*d*ei**3*h**2 + 8*E*ei**2*h**3*k - 4*E*ei**3*h**2*k - 38*d*ei**2*h**2*k) - 4*d*ei*h + 4*ei*h*k + 2*E*ei*h**2)/(2*(2*d*ei**3 - 2*ei**3*k + E*ei**2*h**2 - 2*d*ei**2*h + 2*ei**2*h*k)))
compressiveDamage = multiply(m, inelasticStrain)

crackingStrain = divide(range(0, numStrainPoints+1), numStrainPoints/$$maxStrain)
N = $N
tLambda = $tLambda
tensileYeildStress = multiply(N, exp(multiply(tLambda, crackingStrain)))
tensileDamageScaling = $td
n = multiply(tensileDamageScaling, multiply(divide(log(subtract(1.005, divide(crackingStrain, add(divide(tensileYeildStress, elasticModulus), crackingStrain)))), log(add(1, crackingStrain))), -1))
n[0] = elasticModulus/N
n = min(n)
tensileDamage = subtract(1, divide(1, power(add(1, crackingStrain), n)))
    
#gravityMagnitude = -9.8

sectionName = 'Block'
sectionLocation = ($$mSize/2, $$mSize/2, 0.0)

simulationTime = $$sTime
numberOfSteps = simulationTime*10

try:
    from abaqusConstants import *
        
    elementType = CPE4R
    elementShape = QUAD
    meshSize = 10

    instanceName = 'BLOCK-1'

    boundaries = {'Bottom': ($$mSize/2, 0.0, 0.0), 'Top':($$mSize/2, $$mSize, 0.0), 'Left':(0.0, $$mSize/2, 0.0), 'Right':($$mSize, $$mSize/2, 0.0)}

    steps = ('Initial', 'Step-1', 'Step-2')
    v = (((UNSET, SET, UNSET), ), ((UNSET, $$vel, UNSET), ), ((SET, UNSET, UNSET), ), ((UNSET, UNSET, UNSET), ))
    vNames = (('Bottom', ), ('Top', ), ('Left', ), ('Right', ))
    velocityTable = $$vString

    largeDef=ON
except ImportError: pass
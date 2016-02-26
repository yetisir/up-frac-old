import sys

clargs = sys.argv
if len(clargs) >= 2:
    modelName = clargs[1]
#else: error message
module = __import__('modelData.'+modelName+'_modelData', globals(), locals(), ['*'])
for k in dir(module):
    locals()[k] = getattr(module, k)
#from modelData.test_modelData import *

accelTime_t = velTable_t[-1]/10
amp = -1
vString_t = '0 {0} '.format(amp)
for i in range(len(velTable_t)-1):
    vString_t += '{0} {1} {2} {3} '.format(velTable_t[i]-accelTime_t, amp, velTable_t[i]+accelTime_t, amp*-1)
    amp = amp*-1
vString_t += '{0} {1}'.format(velTable_t[-1], amp)

accelTime_c = velTable_c[-1]/10
amp = -1
vString_c = '0 {0} '.format(amp)
for i in range(len(velTable_c)-1):
    vString_c += '{0} {1} {2} {3} '.format(velTable_c[i]-accelTime_c, amp, velTable_c[i]+accelTime_c, amp*-1)
    amp = amp*-1
vString_c += '{0} {1}'.format(velTable_c[-1], amp)

rangeOffset = bSize/1000
bRange = '{0},{1} {0},{2}'.format(-rangeOffset, mSize+rangeOffset, rangeOffset)
tRange = '{0},{1} {2},{1}'.format(-rangeOffset, mSize+rangeOffset, mSize-rangeOffset)
lRange = '{0},{1} {0},{2}'.format(-rangeOffset, rangeOffset, mSize+rangeOffset)
rRange = '{0},{1} {2},{1}'.format(mSize-rangeOffset, mSize+rangeOffset, -rangeOffset)


UDECParameters = {
    '$mName': '\''+mName+'(t)'+'\'', 
    '$sTime': float(sTime_t),
    '$nSteps': 50, #depending on the number of contacts, the memory is exceeded with too many steps. future iteration of cycleModel.fis shall write to file after each step rather than after all steps to reduce the memory load. 
    '$mSize': mSize,
    '$bSize': bSize,
    '$round': float(bSize)/100,
    '$edge': float(bSize)/100,
    '$vSeed': 1,
    '$rho': rho,
    '$bulk': E/(3*(1-2*nu)),
    '$shear': E/(2*(1+nu)),
    '$jks': jks,
    '$jkn': jkn,
    '$jFriction': jFriction,
    '$jCohesion': jCohesion,
    '$jTension': jTension,
    '$jDilation': jDilation,
    '$vTable': vString_t,
    '$bRange': bRange,
    '$tRange': tRange,
    '$lRange': lRange,
    '$rRange': rRange,
    '$vel': vel_t,
    '$cStress': confiningStress}
    
with open('UDECModel.tpl', 'r') as templateFile:
    template = templateFile.read()
    for i in UDECParameters.keys():
        template = template.replace(i, str(UDECParameters[i]))
    with open('{0}(t)_Model.dat'.format(mName), 'w') as modelFile:
        modelFile.write(template)
        
UDECParameters['$sTime'] = float(sTime_c)
UDECParameters['$vTable'] = vString_c
UDECParameters['$vel'] = vel_c
UDECParameters['$mName'] = '\''+mName+'(c)'+'\''
        
with open('UDECModel.tpl', 'r') as templateFile:
    template = templateFile.read()
    for i in UDECParameters.keys():
        template = template.replace(i, str(UDECParameters[i]))
    with open('{0}(c)_Model.dat'.format(mName), 'w') as modelFile:
        modelFile.write(template)

import sys
import os
import csv

clargs = sys.argv
if len(clargs) >= 2:
    modelName = clargs[1]
#else: error message
module = __import__('UDEC.modelData.'+modelName+'_modelData', globals(), locals(), ['*'])
for k in dir(module):
    locals()[k] = getattr(module, k)
#from modelData.test_modelData import *

with open(os.path.join('ostrich', 'observationUDEC.dat')) as udecFile:
    udecData = csv.reader(udecFile, delimiter=' ')
    next(udecData, None)  # skip the header
    strains = [abs(float(item)) for sublist in [row[4:-1] for row in udecData] for item in sublist]
maxStrain = max(strains)

accelTime = velTable[-1]/10
amp = -1
vString = '((0, {0})'.format(amp)
for i in range(len(velTable)-1):
    vString += '({0}, {1}), ({2}, {3})'.format(velTable[i]-accelTime, amp, velTable[i]+accelTime, amp*-1)
    amp = amp*-1
vString += '({0}, {1}))'.format(velTable[-1], amp)

params = {
    '$$mSize': mSize,
    '$$rho': rho*1e9,
    '$$E': E*1e6,
    '$$nu': nu,
    '$$dAngle': jDilation,
    '$$maxStrain': maxStrain,
    '$$sTime': sTime,
    '$$vel': vel,
    '$$vString': vString}
    
with open(os.path.join('ostrich', 'parametersTemplate.tpl'), 'r') as templateFile:
    template = templateFile.read()
    for i in params.keys():
        template = template.replace(i, str(params[i]))
    import os
    with open(os.path.join('ostrich', 'parameters.tpl'.format(mName)), 'w') as modelFile:
        modelFile.write(template)

import sys
import os
import csv

clargs = sys.argv
if len(clargs) >= 2:
    modelName = clargs[1]
#else: error message
module = __import__('UDEC.modelData.'+modelName[0:-3]+'_modelData', globals(), locals(), ['*'])
for k in dir(module):
    locals()[k] = getattr(module, k)

with open(os.path.join('ostrich', 'observationUDEC.dat')) as udecFile:
    udecData = csv.reader(udecFile, delimiter=' ')
    next(udecData, None)  # skip the header
    strains = [abs(float(item)) for sublist in [row[4:-1] for row in udecData] for item in sublist]
maxStrain = max(strains)

accelTime_t = velTable_t[-1]/10
amp = -1
vString_t = '((0, {0}), '.format(amp)
for i in range(len(velTable_t)-1):
    vString_t += '({0}, {1}), ({2}, {3}), '.format(velTable_t[i]-accelTime_t, amp, velTable_t[i]+accelTime_t, amp*-1)
    amp = amp*-1
vString_t += '({0}, {1}))'.format(velTable_t[-1], amp)

accelTime_c = velTable_c[-1]/10
amp = -1
vString_c = '((0, {0}), '.format(amp)
for i in range(len(velTable_c)-1):
    vString_c += '({0}, {1}), ({2}, {3}), '.format(velTable_c[i]-accelTime_c, amp, velTable_c[i]+accelTime_c, amp*-1)
    amp = amp*-1
vString_c += '({0}, {1}))'.format(velTable_c[-1], amp)

params = {
    '$$mSize': mSize,
    '$$mName': '\''+modelName+'\'',
    '$$rho': rho*1e9,
    '$$dAngle': jDilation,
    '$$confStress': confiningStress*1e6,
    '$$maxStrain': maxStrain}
    
if '(c)' in modelName:
    with open('{0}_modelParameters.dat'.format(mName[0:-3]), 'r') as file:
        maxTensileStrain = file.readline().split()[0] #use proper io load tData
    params['$$maxTS'] = maxTensileStrain
    params['$$sTime'] = sTime_c
    params['$$vel'] = vel_c
    params['$$vString'] = vString_c
    params['$N'] = 2.241357E+06
    params['$tLambda'] = -2.210000E+03
    params['$td'] = 9.284359E-01
    params['$E'] = 1.002912E+10
    params['$nu'] = 2.389403E-01
elif '(t)' in modelName:
    with open('{0}_modelParameters.dat'.format(mName[0:-3]), 'w') as file:
        file.write(str(maxStrain)) #use proper io to save tData
    params['$h'] = 9e-3
    params['$k'] = 9e7
    params['$dd'] = 4e7
    params['$cd'] = 3.5e-1
    params['$$sTime'] = sTime_t
    params['$$vel'] = vel_t
    params['$$vString'] = vString_t
    params['$$maxTS'] = 1


    
with open(os.path.join('ostrich', 'parametersTemplate.tpl'), 'r') as templateFile:
    template = templateFile.read()
    for i in params.keys():
        template = template.replace(i, str(params[i]))
    with open(os.path.join('ostrich', 'parameters.tpl'.format(mName)), 'w') as modelFile:
        modelFile.write(template)
        
with open(os.path.join('ostrich', 'ostIn.tpl'), 'r') as templateFile:
    template = templateFile.read()
    for i in params.keys():
        template = template.replace(i, '#'+i)
    with open(os.path.join('ostrich', 'ostIn.py'.format(mName)), 'w') as modelFile:
        modelFile.write(template)

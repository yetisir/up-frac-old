#Add cmd output and error handling
sTime = 10
mName = 'test'
mSize = 10
bSize = 1
vorSeed = 1
rho = 2.7e-3
E = 12e9
nu = 0.3

jks = 1e3
jkn = 1e7
jFriction = 30
jCohesion = 0.1
jTension = 100
jDilation = 10

velTable = [1, 6, 10]
vel = -0.05


units = 'm-MPa-Gg-s'

accelTime = velTable[-1]/10
amp = -1
vString = '0 {0}'.format(amp)
for i in range(len(velTable)-1):
	vString += '{0} {1} {2} {3}'.format(velTable[i]-accelTime, amp, velTable[i]+accelTime, amp*-1)
	amp = amp*-1
vString += '{0} {1}'.format(velTable[-1], amp)

rangeOffset = bSize/1000
bRange = '{0},{1} {0},{2}'.format(-rangeOffset, mSize+rangeOffset, rangeOffset)
tRange = '{0},{1} {2},{1}'.format(-rangeOffset, mSize+rangeOffset, mSize-rangeOffset)
lRange = '{0},{1} {0},{2}'.format(-rangeOffset, rangeOffset, mSize+rangeOffset)
rRange = '{0},{1} {2},{1}'.format(mSize-rangeOffset, mSize+rangeOffset, -rangeOffset)


UDECParameters = {
	'$mName': '\''+mName+'\'', 
	'$sTime': float(sTime),
	'$nSteps': sTime *10,
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
	'$jCohesion': jDilation,
	'$vTable': vString,
	'$bRange': bRange,
	'$tRange': tRange,
	'$lRange': lRange,
	'$rRange': rRange,
	'$vel': vel}
	
with open('UDECModel.tpl', 'r') as templateFile:
	template = templateFile.read()
	for i in UDECParameters.keys():
		template = template.replace(i, str(UDECParameters[i]))
	with open('{0}_Model.dat'.format(mName), 'w') as modelFile:
		modelFile.write(template)
		
		
	
	
	
	






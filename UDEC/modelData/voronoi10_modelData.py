#Add cmd output and error handling
mName = 'voronoi10'

mSize = 10
bSize = 0.5
vorSeed = 1
rho = 2.7e-3
E = 12e3
nu = 0.3

jks = 1e3
jkn = 1e7
jFriction = 30
jCohesion = 0.1
jTension = 10
jDilation = 10

confiningStress = -10

units = 'm-MPa-Gg-s'
relVars = ['S22']

#tensileTest
sTime_t = 10
velTable_t = [5, sTime_t]
vel_t = -0.001

#compressionTest
sTime_c = 20
velTable_c = [10, sTime_c]
vel_c = 0.01

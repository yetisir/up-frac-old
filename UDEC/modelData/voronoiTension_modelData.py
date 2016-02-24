#Add cmd output and error handling
sTime = 20
mName = 'voronoiTension'
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
jTension = 100
jDilation = 10

velTable = [10, 20]
vel = -0.01

units = 'm-MPa-Gg-s'
testMode = 't' #c, t, or all
relVars = ['S22']
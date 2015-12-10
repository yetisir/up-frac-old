# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 6.13-1 replay file
# Internal Version: 2013_05_15-22.28.56 126354
# Run by Mike on Wed Dec 09 16:03:58 2015
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(1.24219, 1.24074), width=182.85, 
    height=123.081)
session.viewports['Viewport: 1'].makeCurrent()
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
execfile('abaqusTest.py', __main__.__dict__)
#: Model: C:/Users/Mike/Documents/GitHub/Up-Frac/testMPI/model1/Job-1.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       6
#: Number of Node Sets:          6
#: Number of Steps:              1
#: Model: C:/Users/Mike/Documents/GitHub/Up-Frac/testMPI/model1/Job-1.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       6
#: Number of Node Sets:          6
#: Number of Steps:              1
#: Model: C:/Users/Mike/Documents/GitHub/Up-Frac/testMPI/model1/Job-1.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       6
#: Number of Node Sets:          6
#: Number of Steps:              1
print 'RT script done'
#: RT script done
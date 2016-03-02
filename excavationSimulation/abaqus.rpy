# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 6.13-1 replay file
# Internal Version: 2013_05_15-22.28.56 126354
# Run by Mike on Wed Mar 02 08:49:55 2016
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
execfile('excavationSimulation.py', __main__.__dict__)
print 'RT script done'
#: RT script done

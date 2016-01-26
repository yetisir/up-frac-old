# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 6.13-1 replay file
# Internal Version: 2013_05_15-22.28.56 126354
# Run by Mike on Thu Jan 14 09:04:30 2016
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(1.13104, 1.13281), width=166.489, 
    height=112.375)
session.viewports['Viewport: 1'].makeCurrent()
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
execfile('runAbaqus.py', __main__.__dict__)
#* ImportError: No module named parameters
#* File "runAbaqus.py", line 6, in <module>
#*     from parameters import *

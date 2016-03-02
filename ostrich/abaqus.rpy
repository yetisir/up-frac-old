# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 6.13-1 replay file
# Internal Version: 2013_05_15-22.28.56 126354
# Run by Mike on Mon Feb 29 22:16:44 2016
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
#: Abaqus Error: 
#: This error may have occurred due to a change to the Abaqus Scripting
#: Interface. Please see the Abaqus Scripting Manual for the details of
#: these changes. Also see the "Example environment files" section of 
#: the Abaqus Site Guide for up-to-date examples of common tasks in the
#: environment file.
#: Execution of "onCaeGraphicsStartup()" in the site directory failed.
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(0.0, 0.0), width=151.785507202148, 
    height=115.546875)
session.viewports['Viewport: 1'].makeCurrent()
session.viewports['Viewport: 1'].maximize()
from caeModules import *
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
session.viewports['Viewport: 1'].partDisplay.geometryOptions.setValues(
    referenceRepresentation=ON)
openMdb(
    pathName='C:/Users/Mike/Documents/GitHub/Up-Frac/ostrich/model0/tmp.cae')
#: The model database "C:\Users\Mike\Documents\GitHub\Up-Frac\ostrich\model0\tmp.cae" has been opened.
session.viewports['Viewport: 1'].setValues(displayedObject=None)
p = mdb.models['Model-1'].parts['Block']
session.viewports['Viewport: 1'].setValues(displayedObject=p)
a = mdb.models['Model-1'].rootAssembly
session.viewports['Viewport: 1'].setValues(displayedObject=a)
session.viewports['Viewport: 1'].assemblyDisplay.setValues(loads=ON, bcs=ON, 
    predefinedFields=ON, connectors=ON, optimizationTasks=OFF, 
    geometricRestrictions=OFF, stopConditions=OFF)
a = mdb.models['Model-1'].rootAssembly
e1 = a.instances['BLOCK-1'].edges
edges1 = e1.getSequenceFromMask(mask=('[#a ]', ), )
region = a.Set(edges=edges1, name='Set-5')
mdb.models['Model-1'].DisplacementBC(name='BC-5', createStepName='Initial', 
    region=region, u1=UNSET, u2=SET, ur3=SET, amplitude=UNSET, 
    distributionType=UNIFORM, fieldName='', localCsys=None)
session.viewports['Viewport: 1'].assemblyDisplay.setValues(step='Step-1')
mdb.models['Model-1'].boundaryConditions['BC-5'].setValuesInStep(
    stepName='Step-1', u2=FREED)
o1 = session.openOdb(
    name='C:/Users/Mike/Documents/GitHub/Up-Frac/ostrich/model0/Job-1.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Users/Mike/Documents/GitHub/Up-Frac/ostrich/model0/Job-1.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       4
#: Number of Node Sets:          4
#: Number of Steps:              2
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=32.8798, 
    farPlane=47.1202, width=0.183514, height=0.144523, viewOffsetX=-3.1812, 
    viewOffsetY=-4.04177)
session.animationController.setValues(animationType=TIME_HISTORY, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.viewports['Viewport: 1'].view.setValues(nearPlane=32.8836, 
    farPlane=47.1164, width=0.163219, height=0.12854, viewOffsetX=-0.417434, 
    viewOffsetY=4.10635)
session.animationController.stop()
session.animationController.incrementFrame()
session.animationController.showFirstFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
session.animationController.incrementFrame()
o1 = session.openOdb(
    name='C:/Users/Mike/Documents/GitHub/Up-Frac/ostrich/model0/Job-1.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Users/Mike/Documents/GitHub/Up-Frac/ostrich/model0/Job-1.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       4
#: Number of Node Sets:          4
#: Number of Steps:              2
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=1, frame=20 )
session.animationController.setValues(animationType=TIME_HISTORY, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.animationController.stop()
session.animationController.incrementFrame()
session.animationController.decrementFrame()
session.animationController.decrementFrame()
session.animationController.decrementFrame()
session.animationController.decrementFrame()
session.animationController.decrementFrame()
session.animationController.decrementFrame()
session.animationController.decrementFrame()
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='S', outputPosition=INTEGRATION_POINT, refinement=(COMPONENT, 
    'S22'), )

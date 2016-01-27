topText = """#Configuration File for Ostrich Program
ProgramType Levenberg-Marquardt
#ProgramType GeneticAlgorithm

BeginFilePairs    
parameters.tpl	parameters.py
EndFilePairs

ModelExecutable    simulationData.bat

ModelSubdir model

#Parameter Specification
BeginParams
#parameter	init.	low	    high	tx_in  tx_ost	tx_out
$h          0.008   0.001   0.01    none    none    none
$k          90e6    50e6    200e6   none    none    none
$dd         20e6    10e6    100e6   none    none    none
$cd         0.4     0       0.5    none    none    none
$N		    30e6    10e6    100e6   none    none    none
$tLambda    -270    -1e3    -100    none    none    none
$td		    0.9     0.5       1       none    none    none
EndParams

#Observation Configuration
BeginObservations
#observation	value		weight	file		keyword		line	column
"""

bottomText = """
EndObservations

#Configuration for Levenberg-Marquardt algorithm
BeginLevMar
InitialLambda    10.0
LambdaScaleFactor    1.1
MoveLimit    0.1
AlgorithmConvergenceValue    0.0001
LambdaPhiRatio    0.3
LambdaRelReduction    0.01
MaxLambdas    10
MaxIterations    20
EndLevMar

BeginMathAndStats
DiffType    forward
DiffRelIncrement    0.01
Default
#AllStats
#NoStats
#StdDev
#StdErr
#CorrCoeff
#Beale
#Linssen
#CooksD
#DFBETAS
#Confidence
#Sensitivity
EndMathAndStats

BeginExtraFiles
runAbaqus.py
interpolateData.py
simulationData.py
EndExtraFiles

BeginGeneticAlg
PopulationSize 10
MutationRate 0.05
Survivors 1
NumGenerations 50
EndGeneticAlg"""

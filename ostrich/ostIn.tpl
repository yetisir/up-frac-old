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
#parameter	init.	low	    high	tx_in   tx_ost	tx_out
$h          0.008   0.005   0.03    none    none    none
$k          10e6    5e6    20e6   none    none    none
$dd         2e6    1e6    10e6   none    none    none
#$b          10e6    5e6     20e6   none    none    none
$cd         0.9     0.5       0.95     none    none    none
$N		    3e6     1e6     10e6    none    none    none
$tLambda    -5e3    -10e3    -1e3   none    none    none
$td		    0.9     0.5       1     none    none    none
$E			12e9    10e9    15e9    none	none    none
$nu         0.3      0.2     0.4    none    none    none
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

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
$E		    12e9	5e9	    20e9	none	none	none
$nu		    0.3 	0.10	0.5	    none	none	none
$cys1		25e6    10e6	100e6	none	none	none
$cys2		25e6	10e6	100e6	none	none	none
$cys3		25e6	10e6	100e6	none	none	none
$tys1		40e6    10e6    100e6	none	none	none
$tys2		5e6	    1e6 	10e6	none	none	none
$tys3		5e6	    1e6 	10e6	none	none	none
$is2        0.002	0.0 	0.01	none	none	none
$cs2        0.002	0.0 	0.01	none	none	none
$cd         0.2	    0.0 	0.99    none	none	none
$td         0.9 	0.0 	0.99    none	none	none
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

def modelParameters
	modelName = $mName
	simulationTime = $sTime
	numberOfSteps = $nSteps
end	
modelParameters

config
round $round
edge $edge
block 0,0 0,$mSize $mSize,$mSize $mSize,0
vor edge $bSize round $round
 jdelete
gen edge $bSize
zone model elastic density $rho bulk $bulk shear $shear
group joint 'User:ID75'
joint model area jks $jks jkn $jkn jfriction $jFriction jcohesion $jCohesion jtension $jTension jdilation $jDilation range group 'User:ID75'
set jcondf joint model area jks=$jks jkn=$jkn jfriction=$jFriction jcohesion=$jCohesion jtension=$jTension jdilation=$jDilation
table 1 delete
table 1 $vTable

;*****Bottom Boundary
boundary yvelocity 0 range $bRange

;*****Left Boundary
;boundary xvelocity 0 range $lRange

;*****Right Boundary
;boundary xvelocity 0 history=table 1 range $rRange

;*****Top Boundary
boundary yvelocity $vel history=table 1 range $tRange


call cycleModel.fis

action
openInfoForTravisStatus: aTravisStatus
	
	aTravisStatus notNil ifTrue: [ ^ ATDDTravisStatusInfo openForTarget: aTravisStatus ]
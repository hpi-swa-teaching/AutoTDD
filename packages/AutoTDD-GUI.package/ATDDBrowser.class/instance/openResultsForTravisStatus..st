action
openResultsForTravisStatus: aTravisStatus
	(aTravisStatus notNil) 
		ifTrue: [ ^ ATDDTravisStatusResults openForTarget: aTravisStatus  ]
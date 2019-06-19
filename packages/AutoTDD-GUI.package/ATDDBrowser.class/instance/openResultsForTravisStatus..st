action
openResultsForTravisStatus: aTravisStatus
	(aTravisStatus notNil) 
		ifTrue: [ ^ TCIStatusGUI openWithData: aTravisStatus repository  ]
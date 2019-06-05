action
openResultsForTravisStatus: aTravisStatus
	self flag: #todo.
	(aTravisStatus notNil) 
		ifTrue: [ "^ TCIStatusGUI openWithData: nil  "]
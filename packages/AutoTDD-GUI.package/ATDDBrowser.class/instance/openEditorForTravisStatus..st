action
openEditorForTravisStatus: aTravisStatus
	^ (aTravisStatus notNil) 
		ifTrue: [ ATDDTravisStatusEditor openForTravisStatus: aTravisStatus ]
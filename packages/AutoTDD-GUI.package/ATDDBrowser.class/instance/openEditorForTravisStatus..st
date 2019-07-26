action
openEditorForTravisStatus: aTravisStatus
	
	^ aTravisStatus notNil ifTrue: [ ATDDTravisStatusEditor openForTarget: aTravisStatus ]
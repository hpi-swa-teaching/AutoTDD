action
soundsButtonLabel
	
	ATDDSoundPlayer instance isMuted
		ifTrue: [ ^ 'Sounds: Off' ]
		ifFalse: [ ^ 'Sounds: On' ]
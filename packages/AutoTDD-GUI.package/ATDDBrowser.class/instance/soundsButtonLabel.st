action
soundsButtonLabel
	
	ATDDSoundPlayer instance isMuted ifTrue: [ ^ 'Unmute Sounds' ] ifFalse: [ ^ 'Mute Sounds' ]
action
soundsButtonLabel
	
	^ ATDDSoundPlayer instance isMuted
		ifTrue: [ self class volumeOnImage scaledToHeight: self class largeImageHeight ]
		ifFalse: [ self class volumeOffImage scaledToHeight: self class largeImageHeight ]
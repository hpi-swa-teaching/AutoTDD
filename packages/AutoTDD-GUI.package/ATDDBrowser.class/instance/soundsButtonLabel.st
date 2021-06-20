action
soundsButtonLabel
	
	^ ATDDSoundPlayer instance isMuted
		ifTrue: [ self class volumeOnImage scaledToHeight: self class defaultImageHeight ]
		ifFalse: [ self class volumeOffImage scaledToHeight: self class defaultImageHeight ]
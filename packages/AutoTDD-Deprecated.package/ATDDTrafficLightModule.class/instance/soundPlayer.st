accessing
soundPlayer
	
	^ soundPlayer ifNil: [ soundPlayer := ATDDSoundPlayer new ]
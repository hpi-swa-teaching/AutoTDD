accessing
soundPlayer

	^ soundPlayer ifNil: [ soundPlayer := ATDDInSoundPlayer new ]
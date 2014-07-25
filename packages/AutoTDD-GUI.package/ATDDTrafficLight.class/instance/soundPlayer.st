accessing
soundPlayer

	^ soundPlayer ifNil: [ soundPlayer := AutoTDDSoundPlayer new ]
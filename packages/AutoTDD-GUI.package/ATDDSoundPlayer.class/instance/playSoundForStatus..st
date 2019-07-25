playing
playSoundForStatus: aSymbol
	
	(self isMuted not
			and: [ self class soundDictionary includesKey: aSymbol ])
		ifTrue: [
			SoundPlayer stopReverb.
			self
				lastPlayedSound: (self class soundDictionary at: aSymbol) asSymbol.
			(self loadResourceAt: self lastPlayedSound) play ]
playing
playSoundForState: aState

	(self isMuted not and: [self resourceDictionary includesKey: aState])
		ifTrue: [SoundPlayer stopReverb.
				(self loadResourceAt: (self resourceDictionary at: aState) asSymbol) play]
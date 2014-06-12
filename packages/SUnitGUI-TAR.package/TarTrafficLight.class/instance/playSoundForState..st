accessing
playSoundForState: aState
	
	| sound |
	self isMuted ifFalse: 
		[sound := (self soundDictionary at: aState asSymbol) value.
		SoundPlayer stopReverb.
		(self loadSound: sound) play]
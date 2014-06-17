playing
playSoundForState: aState
	
	self isMuted ifFalse: [
		SoundPlayer stopReverb.
		(self loadSoundAt: aState asSymbol) play]
playing
playSoundForState: aState
	
	self isMuted ifFalse: [
		SoundPlayer stopReverb.
		(self loadResourceAt: aState) play ]
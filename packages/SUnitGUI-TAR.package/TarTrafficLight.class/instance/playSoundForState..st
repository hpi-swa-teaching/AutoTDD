accessing
playSoundForState: aState
	| sound |
	sound := (self soundDictionary at: aState asSymbol) value.
	SoundPlayer stopReverb.
	(SampledSound fromWaveFileNamed: 
			((FileDirectory uri: sound) fullName)) play.
					
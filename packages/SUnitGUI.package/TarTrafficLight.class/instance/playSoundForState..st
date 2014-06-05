accessing
playSoundForState: aState
	| sound |
	sound := (self soundDictionary at: aState asSymbol) value.
	SoundPlayer stopReverb.
	(FileDirectory default fileExists: sound) ifTrue: [
		(SampledSound fromWaveFileNamed: 
			((FileDirectory uri: sound) fullName)) play. ]
as yet unclassified
playSoundForState: aState
	| sound |
	sound := (self soundDictionary at: aState asSymbol) value.
	Transcript show: sound.
	(SampledSound fromWaveFileNamed: 
			((FileDirectory uri: sound) fullName)) play.
					
as yet unclassified
testLoadAbsent

	self assert: ((AutoTDDSoundPlayer new loadSound: 'foo.wav') isKindOf: AbstractSound)
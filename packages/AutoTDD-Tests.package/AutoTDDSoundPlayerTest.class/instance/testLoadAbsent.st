as yet unclassified
testLoadAbsent

	self assert: ((AutoTDDSoundPlayer new loadResource: 'foo.wav') isKindOf: AbstractSound)
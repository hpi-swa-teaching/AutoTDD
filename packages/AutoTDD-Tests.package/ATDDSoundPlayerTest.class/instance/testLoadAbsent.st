as yet unclassified
testLoadAbsent

	self assert: ((ATDDSoundPlayer new loadResource: 'foo.wav') isKindOf: AbstractSound)
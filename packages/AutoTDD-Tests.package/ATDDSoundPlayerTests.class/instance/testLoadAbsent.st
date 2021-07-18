tests
testLoadAbsent
	
	self assert: ((ATDDSoundPlayer instance loadResourceAt: 'foo') isKindOf: AbstractSound)
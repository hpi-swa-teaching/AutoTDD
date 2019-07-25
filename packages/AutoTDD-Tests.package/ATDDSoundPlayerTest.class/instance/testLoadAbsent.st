tests
testLoadAbsent
	
	self assert: ((ATDDSoundPlayer new loadResourceAt: 'foo') isKindOf: AbstractSound)
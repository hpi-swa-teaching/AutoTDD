tests
testSingleton
	
	| dataSource |
	
	dataSource := ATDDSoundPlayer instance.
	self assert: dataSource equals: dataSource.
	self assert: ATDDSoundPlayer allInstances size <= 1
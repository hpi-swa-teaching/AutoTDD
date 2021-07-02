tests
testSingleton
	
	| dataSource |
	
	dataSource := ATDDSoundPlayer instance.
	self assert: dataSource equals: dataSource
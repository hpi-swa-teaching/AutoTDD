tests
testSingleton
	
	| dataSource |
	
	dataSource := ATDDSoundPlayer instance.
	self assert: dataSource equals: dataSource.
	self assert: ATDDNullDataSource allInstances size <= 1
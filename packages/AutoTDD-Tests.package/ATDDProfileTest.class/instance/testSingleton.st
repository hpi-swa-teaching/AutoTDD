tests
testSingleton
	
	| dataSource |
	
	dataSource := ATDDProfile instance.
	self assert: dataSource equals: dataSource.
	self assert: ATDDNullDataSource allInstances size <= 1
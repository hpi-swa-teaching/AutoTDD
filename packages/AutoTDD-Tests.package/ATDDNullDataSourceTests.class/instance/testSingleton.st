tests
testSingleton
	
	| dataSource |
	
	dataSource := ATDDNullDataSource instance.
	self assert: dataSource equals: dataSource
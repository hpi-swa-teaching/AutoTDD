tests
testSingleton
	
	| dataSource2 |
	
	dataSource2 := ATDDNullDataSource instance.
	self assert: dataSource equals: dataSource2
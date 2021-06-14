tests
testSingleton
	
	| dataSource2 |
	
	dataSource2 := ATDDNullTestRunner instance.
	self assert: dataSource equals: dataSource2
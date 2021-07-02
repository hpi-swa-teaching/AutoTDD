tests
testSingleton
	
	| dataSource |
	
	dataSource := ATDDProfile instance.
	self assert: dataSource equals: dataSource
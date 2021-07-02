tests
testSingleton
	
	| dataSource |
	
	dataSource := ATDDProfile instance.
	self assert: dataSource equals: dataSource.
	self assert: ATDDProfile allInstances size <= 1
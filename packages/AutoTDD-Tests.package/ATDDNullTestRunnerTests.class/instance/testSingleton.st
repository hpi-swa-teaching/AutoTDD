tests
testSingleton
	
	| testrunner2 |
	
	testrunner2 := ATDDNullTestRunner instance.
	self assert: testrunner equals: testrunner2.
	self assert: ATDDNullDataSource allInstances size <= 1
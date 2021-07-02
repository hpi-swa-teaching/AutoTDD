tests
testSingleton
	
	| testrunner2 |
	
	testrunner2 := ATDDNullTestRunner instance.
	self assert: testrunner equals: testrunner2.
	self assert: ATDDNullTestRunner allInstances size <= 1
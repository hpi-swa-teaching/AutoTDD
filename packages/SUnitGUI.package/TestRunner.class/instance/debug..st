actions
debug: aTestCase
	self debugSuite: (TestSuite new
		addTest: aTestCase; 
		yourself).
tests
testConfiguration
	
	self 
		assert: testrunner active not;
		assert: testrunner config isNil;
		assert: testrunner runTests = testrunner.
		
	testrunner
		active: true;
		config: 1000.
		
	self 
		assert: testrunner active not;
		assert: testrunner config isNil;
		assert: testrunner runTests = testrunner.
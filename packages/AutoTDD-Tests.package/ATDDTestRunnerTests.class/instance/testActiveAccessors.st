tests
testActiveAccessors
	
	testrunner active: false.
	self assert: testrunner active not.
	testrunner active: true.
	self assert: testrunner active
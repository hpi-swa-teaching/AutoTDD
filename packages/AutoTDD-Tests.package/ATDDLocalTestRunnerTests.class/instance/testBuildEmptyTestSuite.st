tests
testBuildEmptyTestSuite
	
	| ts |
	
	ts := testrunner buildEmptyTestSuite.
	self assert: ts valueHolder contents equals: 0.0
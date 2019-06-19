tests
testTestResultsAccessors
	| c |
	c := #('Test').
	testrunner testResults: c.
	self assert: testrunner testResults equals: c
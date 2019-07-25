tests
testTestSuiteAccessors
	| s |
	s := ATDDProgressTestSuite new.
	testrunner testSuite: s.
	self assert: testrunner testSuite equals: s
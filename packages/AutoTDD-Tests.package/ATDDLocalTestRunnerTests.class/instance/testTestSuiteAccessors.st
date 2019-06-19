tests
testTestSuiteAccessors
	| s |
	s := TARProgressTestSuite new.
	testrunner testSuite: s.
	self assert: testrunner testSuite equals: s
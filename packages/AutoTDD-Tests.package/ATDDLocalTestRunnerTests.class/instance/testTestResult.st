tests
testTestResult
	testrunner addTestResult: #('Test').
	self assert: testrunner results size > 0.
	self assert: testrunner resultSummary notNil
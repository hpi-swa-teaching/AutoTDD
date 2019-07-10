tests
testTestResult
	testrunner addTestResult: #('Test').
	self assert: testrunner results notEmpty.
	self assert: testrunner resultSummary notNil
adding
addFailures: aTestResult
	aTestResult failures do: [ :failedTestCase |
		self testResultFailures at: failedTestCase asString put: true.
		self testResultFailureCases at: failedTestCase asString put: failedTestCase
	]
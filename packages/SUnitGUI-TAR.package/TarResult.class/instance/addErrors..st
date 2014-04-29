adding
addErrors: aTestResult
	aTestResult errors do: [ :erroredTestCase |
		self testResultErrors at: erroredTestCase asString put: true.
		self testResultErrorCases at: erroredTestCase asString put: erroredTestCase
	]
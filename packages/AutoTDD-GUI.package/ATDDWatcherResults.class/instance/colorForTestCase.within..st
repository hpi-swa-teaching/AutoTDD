building
colorForTestCase: aTestCase within: aTestResult
	^ self colorForStatus: (self parser primitiveParseStateOf: aTestCase within: aTestResult)
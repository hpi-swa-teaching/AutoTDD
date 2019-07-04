utility
determineColorOf: aTestCase within: aTestResult

	^ self colorDictionary at: (self parser primitiveParseStateOf: aTestCase within: aTestResult)
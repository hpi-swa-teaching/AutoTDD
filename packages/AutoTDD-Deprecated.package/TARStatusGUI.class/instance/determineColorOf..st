utility
determineColorOf: aTestResult
	
	^ self colorDictionary at: (self parser primitiveParseStateOf: aTestResult)
as yet unclassified
determineColorOf: aTestResult

	^ self colorDictionary at: (self parser primitiveParseStateOf: aTestResult)
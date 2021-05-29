building
colorForTestCase: aTestCase
	
	^ self colorForInternalStatus: (self parser primitiveParseStateOf: aTestCase)
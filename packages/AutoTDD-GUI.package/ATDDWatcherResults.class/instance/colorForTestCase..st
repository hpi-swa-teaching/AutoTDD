building
colorForTestCase: aTestCase
	
	^ self colorForStatus: (self parser primitiveParseStateOf: aTestCase)
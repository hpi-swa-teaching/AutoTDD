updating
colorForSelectedHistory
	^ self colorForTestCase: (self parser primitiveParseAt: self selectedHistory of: self testResults)
updating
historyInfoForSelectedHistory
	^ (self parser primitiveParseAt: self selectedHistory of: self testResults) printString
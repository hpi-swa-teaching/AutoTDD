accessing
selectedStateText

	^ (self parser primitiveParseAt: self selectedResult of: self testResults) printString
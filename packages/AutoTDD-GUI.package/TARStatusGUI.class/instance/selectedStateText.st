accessing
selectedStateText

	^ (self parser primitiveParseAt: self selectedResult of: self data results) printString
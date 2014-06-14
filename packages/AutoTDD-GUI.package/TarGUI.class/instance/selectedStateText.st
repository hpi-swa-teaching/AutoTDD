as yet unclassified
selectedStateText

	|text|
	text := (self parser primitiveParseAt: self selectedResult of: self data results).
	^ text printString
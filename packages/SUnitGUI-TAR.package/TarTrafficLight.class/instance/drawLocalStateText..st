drawing
drawLocalStateText: aCanvas
	
	| text color |
	text := (self localTextDictionary at: self localState) value.
	color := (self localColorDictionary at: self localState) value.
	self drawText: text on: aCanvas at: (self position + (15 @ 100)) colored: color
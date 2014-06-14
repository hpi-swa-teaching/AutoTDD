drawing
drawLocalStateText: aCanvas
	
	| text color |
	text := (self localTextDictionary at: self localState) value.
	color := (self localColorDictionary at: self localState) value.
	self
		drawText: text
		on: aCanvas
		centeredAt: (self position + (self localAxis @ 100))
		colored: color
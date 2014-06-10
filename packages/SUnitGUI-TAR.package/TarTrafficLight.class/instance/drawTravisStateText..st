drawing
drawTravisStateText: aCanvas
	
	| text color |
	text := (self travisTextDictionary at: self travisState) value.
	color := (self travisColorDictionary at: self travisState) value.
	self drawText: text on: aCanvas at: (self position + (95 @ 100)) colored: color
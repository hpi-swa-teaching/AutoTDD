drawing
drawStateTextOn: aCanvas
	
	| text color |
	
	text := (self stateTextDictionary at: self state) value.
	color := (self stateColorDictionary at: self state) value.
	self drawText: text on: aCanvas centeredAt: self topCenter + (0 @ 100) colored: 
		color
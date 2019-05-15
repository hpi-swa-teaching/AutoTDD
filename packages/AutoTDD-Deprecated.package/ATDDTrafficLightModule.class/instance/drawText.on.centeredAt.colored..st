accessing
drawText: aString on: aCanvas centeredAt: aPoint colored: aColor
	
	| text |
	text := (TextMorph new
		contents: aString;
		fontName: ATDDTrafficLight fontName size: ATDDTrafficLight fontSize;
		color: aColor;
		yourself).
	self center: text at: aPoint.
	aCanvas draw: text
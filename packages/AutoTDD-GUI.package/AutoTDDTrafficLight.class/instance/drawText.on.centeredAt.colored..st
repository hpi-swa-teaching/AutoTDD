drawing
drawText: aString on: aCanvas centeredAt: aPoint colored: aColor
	
	| text |
	text := (TextMorph new
		contents: aString;
		fontName: self class fontName size: self class fontSize;
		color: aColor;
		yourself).
	self center: text at: aPoint.
	aCanvas draw: text
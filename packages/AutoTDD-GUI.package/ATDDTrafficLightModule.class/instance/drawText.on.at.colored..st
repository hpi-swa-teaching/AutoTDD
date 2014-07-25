accessing
drawText: aString on: aCanvas at: aPoint colored: aColor
	
	aCanvas draw: (TextMorph new
		contents: aString;
		fontName: self class fontName size: self class fontSize;
		color: aColor;
		position: aPoint;
		yourself)
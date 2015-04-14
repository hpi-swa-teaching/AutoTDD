accessing
drawText: aString on: aCanvas at: aPoint colored: aColor
	
	aCanvas draw: (TextMorph new
		contents: aString;
		fontName: ATDDTrafficLight fontName size: ATDDTrafficLight fontSize;
		color: aColor;
		position: aPoint;
		yourself)
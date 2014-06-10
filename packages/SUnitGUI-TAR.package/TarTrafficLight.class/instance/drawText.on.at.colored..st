drawing
drawText: aString on: aCanvas at: aPoint colored: aColor
	
	aCanvas draw: (TextMorph new
		string: aString fontName: self class fontName size: self class fontSize;
		color: aColor;
		extent: (70 @ 20); "uncool, but autoFit does not work properly"
		autoFitOnOff;
		position: aPoint;
		yourself)
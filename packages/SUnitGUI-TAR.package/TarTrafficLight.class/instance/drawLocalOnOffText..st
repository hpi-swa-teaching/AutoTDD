drawing
drawLocalOnOffText: aCanvas
	
	|text|
	text := TextMorph new.
	text string: 'Local' fontName: self fontName size: self fontSize;
		color: self blue;
		extent: (70@20); "uncool, but autoFit does not work properly"
		autoFitOnOff;
		position: self position + (225@0) + (10@10).
	aCanvas drawMorph: text 
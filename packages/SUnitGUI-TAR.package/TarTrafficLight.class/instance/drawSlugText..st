drawing
drawSlugText: aCanvas

	|text|
	text := TextMorph new.
	text string: 'Slug' fontName: self fontName size: self fontSize;
		color: self blue;
		extent: (70@20); "uncool, but autoFit does not work properly"
		autoFitOnOff;
		position: self position + (225@0) + (10@72).
	aCanvas drawMorph: text 
drawing
drawTravisText: aCanvas

	|text|
	text := TextMorph new.
	text string: 'Travis' fontName: 'Roboto' size: 35;
		color: (Color 
				r: 74 g: 93 b: 132 range: 255 );
		centered;
		extent: (60@20); "uncool, but autoFit does not work properly"
		autoFitOnOff;
		position: self position + (80@20).
	aCanvas drawMorph: text 
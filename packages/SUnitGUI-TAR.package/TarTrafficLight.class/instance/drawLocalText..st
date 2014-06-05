drawing
drawLocalText: aCanvas
	
	|text|
	text := TextMorph new.
	text string: 'Local' fontName: 'Roboto' size: 35;
		color: (Color 
				r: 74 g: 93 b: 132 range: 255 );
		centered;
		extent: (60@20); "uncool, but autoFit does not work properly"
		autoFitOnOff;
		position: self position + (20@20).
	aCanvas drawMorph: text 
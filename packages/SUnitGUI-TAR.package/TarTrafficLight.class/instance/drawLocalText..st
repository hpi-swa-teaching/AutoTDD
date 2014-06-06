drawing
drawLocalText: aCanvas
	
	|text|
	text := TextMorph new.
	text string: 'Local' fontName: 'Roboto' size: 40;
		color: (Color 
				r: 74 g: 93 b: 132 range: 255 );
		
		extent: (70@20); "uncool, but autoFit does not work properly"
		autoFitOnOff;
		position: self position + (20@15).
	aCanvas drawMorph: text 
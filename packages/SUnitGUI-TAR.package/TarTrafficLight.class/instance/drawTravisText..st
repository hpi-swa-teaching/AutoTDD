drawing
drawTravisText: aCanvas

	|text|
	text := TextMorph new.
	text string: 'Travis CI' fontName: 'ComicSansMS' size: 22;
		color: (Color 
				r: 74 g: 93 b: 132 range: 255 );
		extent: (70@20); "uncool, but autoFit does not work properly"
		autoFitOnOff;
		position: self position + (95@15).
	aCanvas drawMorph: text 
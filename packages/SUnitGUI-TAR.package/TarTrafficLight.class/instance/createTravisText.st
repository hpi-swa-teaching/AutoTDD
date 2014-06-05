gui
createTravisText
	"|text|
	text := ImageMorph new.
	text 
		newForm: self travisHeadImage;
		extent: 68 @ 21;
		position: self position + (80 @ 20);
		target: self.
	self addMorph: text"
	
	|text|
	text := TextMorph new.
	text string: 'Travis' fontName: 'Roboto' size: 35;
		color: (Color 
				r: 74 g: 93 b: 132 range: 255 );
		centered;
		extent: (70@20); "uncool, but autoFit does not work properly"
		autoFitOnOff;
		position: self position + (90@20).
	self addMorph: text 
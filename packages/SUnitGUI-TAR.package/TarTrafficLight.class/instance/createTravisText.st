gui
createTravisText
	|text|
	text := ImageMorph new.
	text 
		newForm: self travisHeadImage;
		extent: 68 @ 21;
		position: self position + (80 @ 20);
		target: self.
	self addMorph: text
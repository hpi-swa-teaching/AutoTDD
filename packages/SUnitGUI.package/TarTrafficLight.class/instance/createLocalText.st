gui
createLocalText
	|text|
	text := ImageMorph new.
	text 
		newForm: self localHeadImage;
		extent: 58 @ 21;
		position: self position + (20 @ 20);
		target: self.
	self addMorph: text
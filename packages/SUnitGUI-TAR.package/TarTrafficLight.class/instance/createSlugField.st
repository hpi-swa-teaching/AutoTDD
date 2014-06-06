gui
createSlugField
	
	| textField |
	textField := TextFieldMorph new
		extent: 215@20; 
		position: self position + (225@0) + (5 @ 95);
		fontName: 'Roboto' size: 15; 
		contents: self travisSource;
		color: (Color
				r: 250
				g: 250
				b: 248
				range: 255);
		borderWidth: 0;
		name: 'urlField';
		yourself.
	self addMorph: textField.
	
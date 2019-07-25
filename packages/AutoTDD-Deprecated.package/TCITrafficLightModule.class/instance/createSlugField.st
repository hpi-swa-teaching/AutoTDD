building
createSlugField
	
	| textField |
	
	textField := TextFieldMorph new
		extent: 215 @ 20;
		contents: self travisSource;
		fontName: ATDDTrafficLight fontName size: ATDDTrafficLight fontSize;
		color: ATDDTrafficLight backgroundColor;
		borderWidth: 0;
		name: 'slugField';
		yourself.
	self addMorph: textField
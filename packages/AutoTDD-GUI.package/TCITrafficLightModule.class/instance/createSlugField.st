building
createSlugField
	
	| textField |
	textField := TextFieldMorph new
		extent: 215@20; 
		contents: self travisSource;
		fontName: self class fontName size: self class fontSize; 
		color: self class lightGray;
		borderWidth: 0;
		name: 'slugField';
		yourself.
	self addMorph: textField
	
accessing
createSlugField
	
	| textField |
	textField := TextFieldMorph new
		extent: 215@20; 
		position: self tl settingsPosition + (5 @ 95);
		fontName: self tl class fontName size: self tl class fontSize; 
		contents: self travisSource;
		color: self tl class lightGray;
		borderWidth: 0;
		name: 'slugField';
		yourself.
	self addMorph: textField
	
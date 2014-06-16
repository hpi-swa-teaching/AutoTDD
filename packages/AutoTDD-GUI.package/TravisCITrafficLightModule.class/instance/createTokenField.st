accessing
createTokenField
	
	| textField |
	textField := TextFieldMorph new
		extent: 215@20; 
		position: self tl settingsPosition + (5 @ 120);
		fontName: self tl class fontName size: self tl class fontSize; 
		contents: self token;
		color: self tl class lightGray;
		borderWidth: 0;
		name: 'tokenField';
		yourself.
	self addMorph: textField
	
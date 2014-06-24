building
createTokenField
	
	| textField |
	textField := TextFieldMorph new
		extent: 215@20;
		contents: self token;
		fontName: self class fontName size: self class fontSize; 
		color: self class lightGray;
		borderWidth: 0;
		name: 'tokenField';
		yourself.
	self addMorph: textField
	
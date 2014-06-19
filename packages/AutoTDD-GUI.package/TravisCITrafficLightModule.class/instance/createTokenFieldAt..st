building
createTokenFieldAt: aPoint
	
	| textField |
	textField := TextFieldMorph new
		extent: 215@20; 
		position: aPoint + (5 @ 120);
		fontName: self class fontName size: self class fontSize; 
		contents: self token;
		color: self class lightGray;
		borderWidth: 0;
		name: 'tokenField';
		yourself.
	self addMorph: textField
	
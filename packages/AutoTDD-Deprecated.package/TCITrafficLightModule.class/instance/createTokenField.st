building
createTokenField
	
	| textField |
	
	textField := TextFieldMorph new
		extent: 215 @ 20;
		contents: self token;
		fontName: ATDDTrafficLight fontName size: ATDDTrafficLight fontSize;
		color: ATDDTrafficLight backgroundColor;
		borderWidth: 0;
		name: 'tokenField';
		yourself.
	self addMorph: textField
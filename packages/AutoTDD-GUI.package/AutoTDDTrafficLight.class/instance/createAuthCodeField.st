gui
createAuthCodeField
	
	| textField |
	textField := TextFieldMorph new
		extent: 215@20; 
		position: self settingsPosition + (5 @ 120);
		fontName: self class fontName size: self class fontSize; 
		contents: self travisProAuthentificationCode;
		color: self class lightGray;
		borderWidth: 0;
		name: 'authCodeField';
		yourself.
	self addMorph: textField
	
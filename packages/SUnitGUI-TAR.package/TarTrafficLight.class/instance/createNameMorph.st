gui
createNameMorph
	
	| morph text |
	morph := RectangleMorph new
		color: self class gray;
		borderWidth: 0;
		name: 'nameMorph';
		yourself.
	text := TextMorph new
		contents: 'Category: ', self category, ' Test Category: ', self testCategory;
		fontName: self class fontName size: self class fontSize;
		color: self class fontColor;
		position: morph position + (5 @ 0).
	morph
		addMorph: text;
		extent: text extent + (10 @ 0);
		position: (self position - (0 @ morph height)).
	self addMorph: morph
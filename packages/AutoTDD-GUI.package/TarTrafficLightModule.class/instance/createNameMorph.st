building
createNameMorph
	
	| morph text contents |
	morph := RectangleMorph new
		color: ATDDTrafficLight gray;
		borderWidth: 0;
		name: 'nameMorph';
		yourself.
	contents := 'Categories:'.
	self categories do: [ :each | contents := contents, ' ', each ].
	contents := contents, ' Test Categories:'.
	self testCategories do: [ :each | contents := contents, ' ', each ].
	text := TextMorph new
		contents: contents;
		fontName: self class fontName size: self class fontSize;
		color: self class fontColor;
		position: morph position + (5 @ 0).
	morph
		addMorph: text;
		extent: text extent + (10 @ 0);
		position: (self owner position - (0 @ morph height)).
	self addMorph: morph
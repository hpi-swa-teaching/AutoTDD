gui
createNameMorph
	
	| morph |
	morph := RectangleMorph new
		color: self gray;
		borderWidth: 0;
		extent: 500 @ 20;
		visible: false;
		position: self position + (0 @ -20);
		name: 'nameMorph';
		yourself.
	self addMorph: morph
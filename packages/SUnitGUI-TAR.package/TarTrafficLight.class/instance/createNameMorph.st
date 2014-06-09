gui
createNameMorph
	
	| morph |
	morph := RectangleMorph new
		color: self class gray;
		borderWidth: 0;
		extent: 500 @ 20;
		visible: false;
		name: 'nameMorph';
		yourself.
	morph position: self position - (0 @ morph height).
	self addMorph: morph
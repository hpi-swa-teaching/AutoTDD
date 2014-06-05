gui
createNameMorph
	self nameMorph: RectangleMorph new.
	self nameMorph color: Color white;
		 extent: 500 @ 20;
		 visible: false;
		 position: self position + (0 @ -35).
	self addMorph: self nameMorph
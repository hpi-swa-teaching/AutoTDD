morphcreation
createDelegateMorph
	| delegateMorph |
	delegateMorph := RectangleMorph new.
	delegateMorph 
		extent: 200@20;
		position: self position;
		color: Color transparent;
		on: #mouseDown send: #mouseDown: to: self.
	self addMorph: delegateMorph
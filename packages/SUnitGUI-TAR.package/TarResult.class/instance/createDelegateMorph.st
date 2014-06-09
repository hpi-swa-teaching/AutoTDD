morphcreation
createDelegateMorph
	| delegateMorph |
	delegateMorph := RectangleMorph new.
	delegateMorph 
		extent: TarTrafficLight resultExtent;
		position: self position;
		color: Color transparent;
		borderWidth: 0;
		on: #mouseDown send: #mouseDown: to: self.
	self addMorph: delegateMorph
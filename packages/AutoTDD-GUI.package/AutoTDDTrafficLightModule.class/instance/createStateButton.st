building
createStateButton

	| transColor |
	transColor := (TranslucentColor new alpha: 0).
	self addMorph: (IconicButton new
		color: transColor;
		borderColor: transColor;
		actionSelector: #stateButtonClicked;
		target: self;
		name: 'stateButton';
		yourself)
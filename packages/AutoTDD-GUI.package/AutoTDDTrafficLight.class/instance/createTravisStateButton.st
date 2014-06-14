components
createTravisStateButton
	
	| transColor |
	transColor := (TranslucentColor new alpha: 0).
	self addMorph: (IconicButton new
		position: self position + (112@50);
		color: transColor;
		borderColor: transColor;
		actionSelector: #openTravisDialog;
		target: self;
		name: 'travisStateButton';
		yourself)
gui
createLocalStateButton
	
	| transColor |
	transColor := (TranslucentColor new alpha: 0).
	self addMorph: (IconicButton new
		position: self position + (25@50);
		color: transColor;
		borderColor: transColor;
		actionSelector: #openLocalDialog;
		target: self;
		name: 'localStateButton';
		yourself)
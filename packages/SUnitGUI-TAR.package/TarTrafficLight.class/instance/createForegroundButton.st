gui
createForegroundButton
	
	| button |
	button := ThreePhaseButtonMorph new
		offImage: self getPinPng;
		onImage: self getPinStickedPng;
		extent: 30 @ 30;
		position: self topRight + (-25 @ 80);
		actionSelector: #foregroundButtonClicked;
		target: self;
		name: 'foregroundButton';
		yourself.
	self
		addMorph: button;
		inForeground: false
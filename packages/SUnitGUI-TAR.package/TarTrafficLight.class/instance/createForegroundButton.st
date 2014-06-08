gui
createForegroundButton
	
	| button state |
	state := self inForeground
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: self getPinPng;
		onImage: self getPinStickedPng;
		extent: 30 @ 30;
		position: self topRight + (-25 @ 80);
		actionSelector: #foregroundButtonClicked;
		state: state;
		target: self;
		name: 'foregroundButton';
		yourself.
	self addMorph: button
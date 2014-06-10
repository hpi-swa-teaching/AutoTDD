gui
createForegroundButton
	
	| button state |
	state := self inForeground
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: self getPinPng;
		onImage: self getPinStickedPng;
		position: self topRight + (-25 @ 80);
		actionSelector: #foregroundButtonClicked;
		state: state;
		target: self;
		name: 'foregroundButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
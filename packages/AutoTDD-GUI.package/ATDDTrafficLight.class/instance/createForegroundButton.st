components
createForegroundButton
	
	| button state |
	state := self inForeground
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self imageProvider loadResourceAt: #pinInactive);
		onImage: (self imageProvider loadResourceAt: #pinActive);
		actionSelector: #foregroundButtonClicked;
		state: state;
		target: self;
		name: 'foregroundButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self
		center: button at: self position + (self buttonAxis @ 80);
		addMorph: button
building
createProOnOffButton
	
	| button state |
	state := self usePro
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self imageProvider loadResourceAt: #off);
		onImage: (self imageProvider loadResourceAt: #on);
		actionSelector: #proOnOffButtonClicked;
		state: state;
		target: self;
		name: 'proOnOffButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
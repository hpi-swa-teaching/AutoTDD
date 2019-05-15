building
createProOnOffButton
	
	| button state |
	state := self usePro
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self imageProvider loadResourceAt: #toggleOff);
		onImage: (self imageProvider loadResourceAt: #toggleOn);
		actionSelector: #proOnOffButtonClicked;
		state: state;
		target: self;
		name: 'proOnOffButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
accessing
createProOnOffButton
	
	| button state |
	state := self usePro
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self imageProvider loadImageAt: #off);
		onImage: (self imageProvider loadImageAt: #on);
		position: self owner settingsPosition + (160 @ 45);
		actionSelector: #proOnOffButtonClicked;
		state: state;
		target: self;
		name: 'proOnOffButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
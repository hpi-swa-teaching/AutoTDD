building
createProOnOffButtonAt: aPoint
	
	| button state |
	state := self usePro
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self imageProvider loadImageAt: #off);
		onImage: (self imageProvider loadImageAt: #on);
		position: aPoint + (160 @ 45);
		actionSelector: #proOnOffButtonClicked;
		state: state;
		target: self;
		name: 'proOnOffButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
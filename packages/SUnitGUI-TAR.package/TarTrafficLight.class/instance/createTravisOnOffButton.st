gui
createTravisOnOffButton
	
	| button state |
	state := self useTravis
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: self getOffPng;
		onImage: self getOnPng;
		position: self settingsPosition + (90 @ 45);
		actionSelector: #travisOnOffButtonClicked;
		state: state;
		target: self;
		name: 'travisOnOffButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
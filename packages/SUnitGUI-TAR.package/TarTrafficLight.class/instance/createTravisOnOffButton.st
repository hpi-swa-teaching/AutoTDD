gui
createTravisOnOffButton
	
	| button state |
	state := self useTravis
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: self getOffPng;
		onImage: self getOnPng;
		extent: 28 @ 19;
		position: self position + (225@0) + (90 @ 45);
		actionSelector: #onTravisButtonClicked;
		state: state;
		target: self;
		name: 'travisOnOffButton';
		yourself.
	self addMorph: button
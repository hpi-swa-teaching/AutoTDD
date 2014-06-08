gui
createLocalOnOffButton
	
	| button state |
	state := self isTesting
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new 
		offImage: self getOffPng;
		onImage: self getOnPng;
		extent: 28 @ 19;
		position: self position + (225@0) + (90 @ 10);
		actionSelector: #onOffButtonClicked;
		state: state;
		target: self;
		name: 'localOnOffButton';
		yourself.
	self addMorph: button
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
		position: self settingsPosition + (90 @ 10);
		actionSelector: #localOnOffButtonClicked;
		state: state;
		target: self;
		name: 'localOnOffButton';
		yourself.
	self addMorph: button
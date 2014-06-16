as yet unclassified
createOnOffButton
	
	| button state |
	state := self use
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new 
		offImage: (self imageProvider loadImageAt: #off);
		onImage: (self imageProvider loadImageAt: #on);
		position: self owner settingsPosition + self onOffButtonPosition;
		actionSelector: #onOffButtonClicked;
		state: state;
		target: self;
		name: 'onOffButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
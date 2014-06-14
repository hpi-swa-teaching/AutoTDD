gui
createLocalOnOffButton
	
	| button state |
	state := self useLocal
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new 
		offImage: (self loadImageAt: #off);
		onImage: (self loadImageAt: #on);
		position: self settingsPosition + (90 @ 10);
		actionSelector: #localOnOffButtonClicked;
		state: state;
		target: self;
		name: 'localOnOffButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
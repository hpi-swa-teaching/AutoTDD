gui
createMuteButton
	
	| button state |
	state := self isMuted 
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self loadImage: 'unmuteButton.png');
		onImage: (self loadImage: 'muteButton.png');
		actionSelector: #muteButtonClicked;
		state: state;
		target: self;
		name: 'muteButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self center: button at: self position + (self buttonAxis @ 100).
	self addMorph: button
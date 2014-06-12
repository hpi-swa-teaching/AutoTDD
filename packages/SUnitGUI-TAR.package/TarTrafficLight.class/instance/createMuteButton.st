gui
createMuteButton
	
	| button state |
	state := self isMuted 
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self loadImage: 'unmuteButton.png');
		onImage: (self loadImage: 'muteButton.png');
		position: self topRight + (-30 @ (self height * 2/3) );
		actionSelector: #muteButtonClicked;
		state: state;
		target: self;
		name: 'muteButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
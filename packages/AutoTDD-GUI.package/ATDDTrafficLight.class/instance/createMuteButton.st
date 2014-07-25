components
createMuteButton
	
	| button state |
	state := self soundPlayer isMuted 
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self imageProvider loadResourceAt: #unmute);
		onImage: (self imageProvider loadResourceAt: #mute);
		actionSelector: #muteButtonClicked;
		state: state;
		target: self;
		name: 'muteButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self
		center: button at: self position + (self buttonAxis @ 107);
		addMorph: button
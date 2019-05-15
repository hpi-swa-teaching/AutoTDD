components
createSettingsButton
	
	| button |
	button := ThreePhaseButtonMorph new
		offImage: (self imageProvider loadResourceAt: #settingsInactive);
		onImage: (self imageProvider loadResourceAt: #settingsActive);
		actionSelector: #settingsButtonClicked;
		state: #off;
		target: self;
		name: 'settingsButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
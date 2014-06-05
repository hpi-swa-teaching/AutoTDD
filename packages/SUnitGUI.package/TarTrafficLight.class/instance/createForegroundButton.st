gui
createForegroundButton
	self foregroundButton: ThreePhaseButtonMorph new.
	self foregroundButton 
		offImage: self getPinPng;
		onImage: self getPinStickedPng;
		extent: 35 @ 35;
		position: self position + (160 @ 60);
		actionSelector: #foregroundButtonClicked;
		target: self.
	self inForeground: false.
	self addMorph: self foregroundButton
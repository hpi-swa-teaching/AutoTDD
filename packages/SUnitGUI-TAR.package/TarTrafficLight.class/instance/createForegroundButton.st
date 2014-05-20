gui
createForegroundButton
	self foregroundButton: ThreePhaseButtonMorph new.
	self foregroundButton 
		offImage: self getPinPng;
		onImage: self getPinStickedPng;
		extent: 35 @ 35;
		position: self position + (120 @ -35);
		actionSelector: #foregroundButtonClicked;
		target: self.
	self inForeground: false.
	self addMorph: self foregroundButton
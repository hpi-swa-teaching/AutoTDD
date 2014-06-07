gui
createTravisOnOffButton
	
	| button |
	button := ThreePhaseButtonMorph new
		offImage: self getOffPng;
		onImage: self getOnPng;
		extent: 28 @ 19;
		position: self position + (225@0) + (90 @ 45);
		actionSelector: #onTravisButtonClicked;
		state: #off;
		target: self;
		name: 'travisOnOffButton';
		yourself.
	self 
		addMorph: button;
		useTravis: false
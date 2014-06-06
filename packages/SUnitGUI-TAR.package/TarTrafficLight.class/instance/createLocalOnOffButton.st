gui
createLocalOnOffButton
	
	| button |
	button := ThreePhaseButtonMorph new 
		offImage: self getOffPng;
		onImage: self getOnPng;
		extent: 40 @ 20;
		position: self topRight + (70 @ 10);
		actionSelector: #onOffButtonClicked;
		state: #on;
		target: self;
		name: 'localOnOffButton';
		yourself.
	self
		addMorph: button;
		isTesting: true
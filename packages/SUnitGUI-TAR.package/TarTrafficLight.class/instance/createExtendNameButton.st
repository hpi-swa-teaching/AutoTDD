gui
createExtendNameButton
	
	| button |
	button := ThreePhaseButtonMorph new
		offImage: self getExpand;
		onImage: self getCollapse;
		extent: 20 @ 20;
		position: self position + (70 @ 15);
		actionSelector: #extendNameButtonClicked;
		target: self;
		name: 'extendNameButton';
		yourself.
	self
		addMorph: button;
		nameExpanded: false
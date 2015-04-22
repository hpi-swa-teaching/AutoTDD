building
createExtendNameButton
	
	| button state |
	state := self nameExpanded
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self imageProvider loadResourceAt: #infoInactive);
		onImage: (self imageProvider loadResourceAt: #infoActive);
		actionSelector: #extendNameButtonClicked;
		state: state;
		target: self;
		name: 'extendNameButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self center: button at: (self position + (30@5 negated)).
	self addMorph: button
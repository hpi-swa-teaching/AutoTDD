components
createExtendNameButton
	
	| button state |
	state := self nameExpanded
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: (self loadImageAt: #expand);
		onImage: (self loadImageAt: #collapse);
		actionSelector: #extendNameButtonClicked;
		state: state;
		target: self;
		name: 'extendNameButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self center: button at: (self position + (self localAxis @ 10)).
	self addMorph: button
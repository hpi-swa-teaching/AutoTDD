gui
createExtendNameButton
	
	| button state |
	state := self resultsExpanded
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: self getExpand;
		onImage: self getCollapse;
		position: self position + (55 @ 12);
		actionSelector: #extendNameButtonClicked;
		state: state;
		target: self;
		name: 'extendNameButton';
		yourself.
	button extent: (button offImage extent max: button onImage extent).
	self addMorph: button
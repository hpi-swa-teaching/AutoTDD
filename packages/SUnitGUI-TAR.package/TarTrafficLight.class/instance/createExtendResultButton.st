gui
createExtendResultButton
	
	| button state |
	state := self resultsExpanded
		ifTrue: [ #on ]
		ifFalse: [ #off ].
	button := ThreePhaseButtonMorph new
		offImage: self getCollapse;
		onImage: self getExpand;
		extent: 20 @ 20;
		position: self position + (39 @ 150);
		actionSelector: #extendResultButtonClicked;
		state: state;
		target: self;
		name: 'extendResultButton';
		visible: false;
		yourself.
	self addMorph: button
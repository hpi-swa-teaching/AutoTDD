building
createApplyButton
	
	| button transColor|
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: (self imageProvider loadResourceAt: #apply);
		extent: 39 @ 10;
		color: transColor;
		borderColor: transColor;
		actionSelector: #applyButtonClicked;
		target: self;
		name: 'applyButton';
		yourself.
	self addMorph: button.
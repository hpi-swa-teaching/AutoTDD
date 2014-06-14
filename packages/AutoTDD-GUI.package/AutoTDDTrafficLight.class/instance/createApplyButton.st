gui
createApplyButton
	
	| button transColor|
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: (self loadImageAt: #apply);
		extent: 60 @ 20;
		position: self settingsPosition + (90 @ 75);
		color: transColor;
		borderColor: transColor;
		actionSelector: #applyButtonClicked;
		target: self;
		name: 'applyButton';
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self addMorph: button.
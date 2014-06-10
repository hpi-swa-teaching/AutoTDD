gui
createApplyButton
	
	| button transColor|
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: self getApplyButton;
		extent: 60 @ 20;
		position: self settingsPosition + (160 @ 120);
		color: transColor;
		borderColor: transColor;
		actionSelector: #applySlug;
		target: self;
		name: 'applyButton';
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self addMorph: button.
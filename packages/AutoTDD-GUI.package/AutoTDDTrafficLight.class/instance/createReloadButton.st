components
createReloadButton
	| button transColor|
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: (self loadImageAt: #reload);
		color: transColor;
		borderColor: transColor;
		actionSelector: #reloadButtonClicked;
		target: self;
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self center: button at: self position + (self buttonAxis @ 50).
	self addMorph: button
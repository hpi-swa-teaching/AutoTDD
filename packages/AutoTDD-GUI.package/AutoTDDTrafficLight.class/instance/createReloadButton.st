components
createReloadButton
	| button transColor|
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: (self imageProvider loadImageAt: #reload);
		color: transColor;
		borderColor: transColor;
		actionSelector: #reloadButtonClicked;
		name: 'reloadButton';
		target: self;
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self center: button at: self position + (self buttonAxis @ 50).
	self addMorph: button
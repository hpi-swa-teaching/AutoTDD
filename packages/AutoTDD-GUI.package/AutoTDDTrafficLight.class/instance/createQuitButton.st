components
createQuitButton
	
	| button transColor|
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: (self imageProvider loadImageAt: #reload);
		color: transColor;
		borderColor: transColor;
		actionSelector: #quitButtonClicked;
		name: 'quitButton';
		target: self;
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self center: button at: self position + (10 @ 10).
	self addMorph: button
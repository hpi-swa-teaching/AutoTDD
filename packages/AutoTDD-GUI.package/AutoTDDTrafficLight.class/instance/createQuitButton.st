components
createQuitButton
	
	| button transColor|
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: (self imageProvider loadResourceAt: #quit);
		color: transColor;
		borderColor: transColor;
		actionSelector: #quitButtonClicked;
		name: 'quitButton';
		target: self;
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self
		center: button at: self topLeft + (10 @ 5);
		addMorph: button
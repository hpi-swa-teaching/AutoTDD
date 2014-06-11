gui
createReloadButton
	| button transColor|
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: self getReload;
		"extent:  30 @ 30;"
		position: self topRight + (-30 @ (self height /3));
		color: transColor;
		borderColor: transColor;
		actionSelector: #reloadButtonClicked;
		target: self;
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self addMorph: button
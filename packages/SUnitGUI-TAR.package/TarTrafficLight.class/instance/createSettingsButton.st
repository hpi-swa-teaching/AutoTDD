gui
createSettingsButton
	
	| button transColor |
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: self getGear;
		position: self topRight + (-30 @ (self height /6));
		color: transColor;
		borderColor: transColor;
		actionSelector: #settingsButtonClicked;
		target: self;
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self addMorph: button
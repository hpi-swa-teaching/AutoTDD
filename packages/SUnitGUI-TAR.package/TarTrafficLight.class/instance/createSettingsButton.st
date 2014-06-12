gui
createSettingsButton
	
	| button transColor |
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: self getGear;
		color: transColor;
		borderColor: transColor;
		actionSelector: #settingsButtonClicked;
		target: self;
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self center: button at: self position + (self buttonAxis @ 20).
	self addMorph: button
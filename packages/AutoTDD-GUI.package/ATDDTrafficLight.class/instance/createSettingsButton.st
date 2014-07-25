components
createSettingsButton
	
	| button transColor |
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: (self imageProvider loadResourceAt: #gear);
		color: transColor;
		borderColor: transColor;
		actionSelector: #settingsButtonClicked;
		name: 'settingsButton';
		target: self;
		yourself.
	button extent: (button findA: SketchMorph) extent.
	self
		center: button at: self position + (self buttonAxis @ 20);
		addMorph: button
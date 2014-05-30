gui
createSettingsButton
	| button transColor|
	button := IconicButton new labelGraphic: self getGear.
	transColor := (TranslucentColor new alpha: 0).
	button 
		extent:  45 @ 45;
		position: self position + (145 @ -40);
		color: transColor;
		borderColor: transColor;
		actionSelector: #settingsButtonClicked;
		target: self.
	self addMorph: button.
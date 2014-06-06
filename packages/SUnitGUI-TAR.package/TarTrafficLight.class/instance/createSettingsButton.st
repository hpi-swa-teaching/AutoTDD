gui
createSettingsButton
	
	| button transColor|
	button := IconicButton new labelGraphic: self getGear.
	transColor := (TranslucentColor new alpha: 0).
	button 
		extent:  30 @ 30;
		position: self topRight + (-35 @ 5);
		color: transColor;
		borderColor: transColor;
		actionSelector: #settingsButtonClicked;
		target: self.
	self addMorph: button.
gui
createReloadButton
	| button transColor|
	button := IconicButton new labelGraphic: self reloadImage.
	transColor := (TranslucentColor new alpha: 0).
	button 
		extent:  40 @ 40;
		position: self position + (160 @ 25);
		color: transColor;
		borderColor: transColor;
		actionSelector: #reloadButtonClicked;
		target: self.
	self addMorph: button.
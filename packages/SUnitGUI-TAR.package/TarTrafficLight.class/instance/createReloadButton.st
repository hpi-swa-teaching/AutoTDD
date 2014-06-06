gui
createReloadButton
	| button transColor|
	button := IconicButton new labelGraphic: self reloadImage.
	transColor := (TranslucentColor new alpha: 0).
	button 
		extent:  30 @ 30;
		position: self topRight + (-35 @ 40);
		color: transColor;
		borderColor: transColor;
		actionSelector: #reloadButtonClicked;
		target: self.
	self addMorph: button.
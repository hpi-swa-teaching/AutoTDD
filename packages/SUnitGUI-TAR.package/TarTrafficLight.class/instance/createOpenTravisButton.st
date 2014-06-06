gui
createOpenTravisButton
	
	| button transColor|
	button := IconicButton new labelGraphic: self getOpenTravisButton.
	transColor := (TranslucentColor new alpha: 0).
	button 
		extent:  20 @ 20;
		position: self position + (150 @ 15);
		color: transColor;
		borderColor: transColor;
		actionSelector: #openTravisDialog;
		target: self.
	self addMorph: button.
gui
createApplyButton
	
	| button transColor|
	button := IconicButton new labelGraphic: self getApplyButton.
	transColor := (TranslucentColor new alpha: 0).
	button 
		extent: 60 @ 20;
		position: self position + (225@0) + (160 @ 120);
		color: transColor;
		borderColor: transColor;
		actionSelector: #applySlug;
		target: self;
		name: 'urlButton';
		yourself.
	self addMorph: button.
gui
createOpenTravisButton
	self travisOpenButton: PluggableButtonMorphPlus new.
	
	self travisOpenButton 
		vResizing: false;
		hResizing: false;
		label: 'Open Travis'; 
		extent:  200 @ 20;
		position: self topRight + (0 @ 120);
		action: #openTravisDialog;
		model: self.	
		
	self addMorph: self travisOpenButton.
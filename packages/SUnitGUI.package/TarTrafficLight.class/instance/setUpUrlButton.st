gui
setUpUrlButton
	self urlButton: PluggableButtonMorphPlus new.
	
	self urlButton 
		vResizing: false;
		hResizing: false;
		label: 'Apply URl'; 
		extent:  200 @ 20;
		position: self topRight + (0 @ 80);
		action: #applyUrl;
		model: self.	
		
	self addMorph: urlButton.
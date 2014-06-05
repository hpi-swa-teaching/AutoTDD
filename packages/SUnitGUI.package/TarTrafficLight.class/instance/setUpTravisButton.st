gui
setUpTravisButton
	self travisButton: PluggableButtonMorphPlus new.
	
	self travisButton
		vResizing: false;
		hResizing: false;
		color: (Color r: 1.0 g: 0.0 b: 0.0);
		extent:  200 @ 20;
		position: self topRight + (0 @ 100);
		label: 'Activate Travis';
		action: #onTravisButtonClicked;
		model: self.
			
	(self useTravis) ifTrue: [self travisButton 
							     color: (Color r: 0.0 g: 1.0 b: 0.0);
					 		     label: 'Deactivate Travis'.].
	self addMorph: travisButton.
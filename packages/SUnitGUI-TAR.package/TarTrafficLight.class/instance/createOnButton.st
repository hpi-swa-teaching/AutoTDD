gui
createOnButton
	self onButton: PluggableButtonMorphPlus new.
	self onButton vResizing: false;
		 hResizing: false;
		 extent: 80 @ 20;
		 position: self position + (120 @ 0);
		 label: 'On';
		 enabled: false;
		 action: #onButtonClicked;
		 model: self.
	self addMorph: self onButton
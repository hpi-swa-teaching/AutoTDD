gui
createBackgroundButton
	self backgroundButton: PluggableButtonMorphPlus new.
	self backgroundButton vResizing: false;
		 hResizing: false;
		 extent: 80 @ 20;
		 position: self position + (200 @ 20);
		 label: 'Background';
		 enabled: true;
		 action: #backgroundButtonClicked;
		 model: self.
	self addMorph: self backgroundButton
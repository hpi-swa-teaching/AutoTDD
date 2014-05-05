gui
createForegroundButton
	self foregroundButton: PluggableButtonMorphPlus new.
	self foregroundButton vResizing: false;
		 hResizing: false;
		 extent: 80 @ 20;
		 position: self position + (200 @ 0);
		 label: 'Foreground';
		 enabled: true;
		 action: #foregroundButtonClicked;
		 model: self.
	self addMorph: self foregroundButton
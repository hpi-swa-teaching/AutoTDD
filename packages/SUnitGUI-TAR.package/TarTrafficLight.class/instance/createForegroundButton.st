gui
createForegroundButton
	self foregroundButton: PluggableButtonMorph new.
	self foregroundButton vResizing: false;
		 hResizing: false;
		 extent: 80 @ 20;
		 position: self position + (120 @ -20);
		 label: 'Pin';
		 "enabled: true;"
		 action: #foregroundButtonClicked;
		 model: self.
	self inForeground: false.
	self addMorph: self foregroundButton
gui
createExtendNameButton
	self extendNameButton: PluggableButtonMorphPlus new.
	self extendNameButton vResizing: false;
		 hResizing: false;
		 extent: 120 @ 15;
		 position: self position + (0 @ -15);
		 visible: true;
		 label: '^';
		 action: #extendNameButtonClicked;
		 model: self.
	self nameExpanded: false.
	self addMorph: self extendNameButton
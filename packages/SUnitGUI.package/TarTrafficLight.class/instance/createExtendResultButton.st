gui
createExtendResultButton
	self extendResultButton: PluggableButtonMorphPlus new.
	self extendResultButton vResizing: false;
		 hResizing: false;
		 extent: 100 @ 20;
		 position: self position + (50 @ 150);
		 visible: false;
		 label: 'v';
		 action: #extendResultButtonClicked;
		 model: self.
	self resultsExpanded: false.
	self addMorph: self extendResultButton
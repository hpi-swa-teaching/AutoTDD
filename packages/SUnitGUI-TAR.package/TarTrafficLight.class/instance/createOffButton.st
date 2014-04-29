gui
createOffButton
	self offButton: PluggableButtonMorphPlus new.
	self offButton vResizing: false;
		 hResizing: false;
		 extent: 80 @ 20;
		 position: self position + (120 @ 20);
		 label: 'Off';
		 enabled: true;
		 action: #offButtonClicked;
		 model: self.
	self addMorph: self offButton
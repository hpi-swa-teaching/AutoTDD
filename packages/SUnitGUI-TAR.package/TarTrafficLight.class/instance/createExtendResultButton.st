gui
createExtendResultButton
	
	| button |
	button := PluggableButtonMorphPlus new
		vResizing: false;
		hResizing: false;
		extent: 100 @ 20;
		position: self position + (50 @ 150);
		visible: false;
		label: 'v';
		action: #extendResultButtonClicked;
		model: self;
		name: 'extendResultButton';
		yourself.
	self 
		addMorph: button;
		resultsExpanded: false
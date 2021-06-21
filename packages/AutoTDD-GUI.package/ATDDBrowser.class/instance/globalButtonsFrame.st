building
globalButtonsFrame
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: 0;
		rightFraction: 0 offset: self class globalButtonWidth;
		bottomFraction: 1;
		yourself
building
watcherButtonsFrame
	
	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: self watcherListHeightFactor offset: self buttonHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: self watcherListHeightFactor offset: 2 * self buttonHeight;
		yourself
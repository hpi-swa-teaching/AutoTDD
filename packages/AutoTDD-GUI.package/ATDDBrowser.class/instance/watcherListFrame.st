building
watcherListFrame
	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0 offset: self buttonHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: self watcherListHeightFactor offset: self buttonHeight;
		yourself
building
watcherFrame
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: 0 offset: self buttonHeight;
		rightFraction: 1;
		bottomFraction: self listHeightFactor offset: self buttonHeight;
		yourself
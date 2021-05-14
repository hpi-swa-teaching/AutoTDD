building
watcherFrame
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: 0;
		rightFraction: 1;
		bottomFraction: self listHeightFactor;
		yourself
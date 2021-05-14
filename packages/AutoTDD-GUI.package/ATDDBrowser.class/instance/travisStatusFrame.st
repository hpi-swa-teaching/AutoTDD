building
travisStatusFrame
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: self listHeightFactor offset: self buttonHeight;
		rightFraction: 1;
		bottomFraction: 2 * self listHeightFactor offset: self buttonHeight;
		yourself
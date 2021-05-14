building
travisStatusFrame
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: self listHeightFactor;
		rightFraction: 1;
		bottomFraction: 2 * self listHeightFactor;
		yourself
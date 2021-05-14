building
gitHubActionsStatusFrame
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: 2 * self listHeightFactor offset: self buttonHeight;
		rightFraction: 1;
		bottomFraction: 1 offset: self buttonHeight;
		yourself
building
travisStatusListFrame
	
	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: self watcherListHeightFactor offset: 2
			* self buttonHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: self buttonHeight negated;
		yourself
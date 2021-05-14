building
travisStatusListFrame
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: 0 offset: self buttonHeight ;
		rightFraction: 1;
		bottomFraction: 1 offset: self buttonHeight negated;
		yourself
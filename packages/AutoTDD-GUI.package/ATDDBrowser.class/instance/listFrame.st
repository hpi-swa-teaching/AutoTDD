building
listFrame
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: 0 offset: self class headerHeight;
		rightFraction: 1;
		bottomFraction: 1 offset: self buttonHeight negated;
		yourself
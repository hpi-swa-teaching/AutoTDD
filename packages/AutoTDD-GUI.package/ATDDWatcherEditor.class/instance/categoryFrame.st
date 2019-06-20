building
categoryFrame
	
	^ LayoutFrame new
		leftFraction: 0.5 offset: 0;
		topFraction: 0 offset: self inputFieldHeight;
		rightFraction: 0.75 offset: 0;
		bottomFraction: 1 offset: (self bottomSpace negated);
		yourself
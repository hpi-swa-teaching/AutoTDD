building
categoryCheckboxFrame
	
	^ LayoutFrame new
		leftFraction: 0.75 offset: 0;
		topFraction: 1 offset: self bottomSpace negated;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: (self bottomSpace - self inputFieldHeight) negated;
		yourself
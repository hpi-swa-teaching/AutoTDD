building
testCategoryCheckboxFrame
	
	^ LayoutFrame new
		leftFraction: 0.25 offset: 0;
		topFraction: 1 offset: self bottomSpace negated;
		rightFraction: 0.5 offset: 0;
		bottomFraction: 1 offset: (self bottomSpace - self inputFieldHeight) negated;
		yourself
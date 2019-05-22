building
categoryCheckboxFrame
	
	^ LayoutFrame new
		leftFraction: 0.75 offset: 0;
		topFraction: 0.5 offset: 0;
		rightFraction: 1 offset: 0;
		bottomFraction: 0.5 offset: self inputFieldHeight;
		yourself
accessing
categoryFrame
	
	^ LayoutFrame new
		leftFraction: 0.5 offset: 0;
		topFraction: 0 offset: self class inputFieldHeight;
		rightFraction: 0.75 offset: 0;
		bottomFraction: 1 offset: 0;
		yourself
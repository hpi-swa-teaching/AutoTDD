building
useProCheckBoxFrame
	
	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0.20 offset: 0;
		rightFraction: 1 offset: 0;
		bottomFraction: 0.20 offset: self inputFieldHeight;
		yourself
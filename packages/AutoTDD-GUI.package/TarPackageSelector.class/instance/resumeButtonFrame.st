building
resumeButtonFrame
	^ LayoutFrame new
		leftFraction: 0.8 offset: 0;
		topFraction: 0 offset: self inputFieldHeight*2 ;
		rightFraction: 1 offset: 0;
		bottomFraction: 0 offset: self inputFieldHeight*3;
		yourself
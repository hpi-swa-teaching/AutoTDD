building
watcherTextFrame
	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0.6 offset: 0;
		rightFraction: 0.5 offset: 0;
		bottomFraction: 0.6 offset: self inputFieldHeight;
		yourself
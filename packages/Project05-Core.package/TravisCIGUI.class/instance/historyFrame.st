building
historyFrame
	^ LayoutFrame new
		leftFraction: 0.0 offset: 0;
		topFraction: 0 offset: (self verticalLines first first);
		rightFraction: 0 offset: self horizontalLines first;
		bottomFraction: 1 offset: 0;
		yourself
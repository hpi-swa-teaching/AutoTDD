building
logFrame

	^ LayoutFrame new
		leftFraction: 0 offset: self horizontalLines first;
		topFraction:  0 offset: (self verticalLines second second);
		rightFraction: 1.0 offset: 0;
		bottomFraction: 1 offset: ((self verticalLines second last) + 4);
		yourself
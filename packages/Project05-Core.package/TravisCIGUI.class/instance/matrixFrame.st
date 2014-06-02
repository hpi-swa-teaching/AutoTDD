building
matrixFrame

	^ LayoutFrame new
		leftFraction: 0 offset: self horizontalLines first;
		topFraction: 0 offset: (self verticalLines second first);
		rightFraction: 1 offset: 0;
		bottomFraction: 0 offset: (self verticalLines second second);
		yourself
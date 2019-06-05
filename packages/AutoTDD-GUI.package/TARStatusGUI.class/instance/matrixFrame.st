building
matrixFrame

	^ LayoutFrame new
		leftFraction: 0 offset: self verticalLines first;
		topFraction: 0 offset: (self horizontalLines second first);
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: ((self horizontalLines second last) + 4);
		yourself
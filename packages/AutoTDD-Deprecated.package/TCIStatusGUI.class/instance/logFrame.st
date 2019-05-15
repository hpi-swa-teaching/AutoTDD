building
logFrame

	^ logFrame ifNil: [
		logFrame := LayoutFrame new
			leftFraction: 0 offset: self verticalLines first;
			topFraction:  0 offset: (self horizontalLines second second);
			rightFraction: 1 offset: 0;
			bottomFraction: 0 offset: ((self horizontalLines second third));
			yourself]
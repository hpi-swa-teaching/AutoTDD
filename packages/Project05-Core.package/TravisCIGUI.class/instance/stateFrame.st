building
stateFrame

	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0 offset: 0;
		rightFraction: 0 offset: self horizontalLines first;
		bottomFraction: 0 offset: (self verticalLines first first);
		yourself
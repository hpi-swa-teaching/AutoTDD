building
buttonsFrame

	^ LayoutFrame new
		leftFraction: 0;
		topFraction: 1 offset: self buttonHeight negated;
		rightFraction: 1;
		bottomFraction: 1;
		yourself
accessing
headerFrame

	^ LayoutFrame new
		leftFraction: 0;
		topFraction: 0;
		rightFraction: 1;
		bottomFraction: 0 offset: self class headerHeight;
		yourself
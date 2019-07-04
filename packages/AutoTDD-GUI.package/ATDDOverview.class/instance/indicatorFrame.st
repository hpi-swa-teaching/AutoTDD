building
indicatorFrame
	^ LayoutFrame new leftFraction: 0 offset: 0;
		 topFraction: 0 offset: self inputFieldHeight;
		 rightFraction: 1 offset: 0;
		 bottomFraction: 0.5 offset: 0;
		 yourself
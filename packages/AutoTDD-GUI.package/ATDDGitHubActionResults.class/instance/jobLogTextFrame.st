building
jobLogTextFrame
	
	^ LayoutFrame new
		leftFraction: 0.3 offset: 0;
		topFraction: 0.3 offset: self class defaultCheckBoxHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: self buttonHeight negated;
		yourself
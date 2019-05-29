building
buttonFrame

	| width left |
	width := 100.
	left := (self verticalLines first) / 2 - (width/2).
	^ LayoutFrame new
		leftFraction: 0.5 offset: left;
		topFraction: 1 offset: self horizontalLines second last;
		rightFraction: 0.5 offset: left + width;
		bottomFraction: 1 offset: 0;
		yourself
building
testingEntityFrameAt: anIndex
	
	^ LayoutFrame new
		leftFraction: 0;
		topFraction: anIndex * self heightPerTestingEntity;
		rightFraction: 1;
		bottomFraction: 1 - ((anIndex + 1) * self heightPerTestingEntity);
		yourself
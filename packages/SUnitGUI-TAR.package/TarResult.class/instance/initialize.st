initialization
initialize
	super initialize.
	self addTimeStamp;
		createDelegateMorph;
		cancelled: false;
		testResultMorphsShown: false
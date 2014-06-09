initialization
initialize
	super initialize.
	self 
		borderWidth: 0;
		addTimeStamp;
		createDelegateMorph;
		cancelled: false;
		testResultMorphsShown: false
initialization
initialize
	super initialize.
	self 
		borderWidth: 1;
		borderColor: self class darkGray;
		addTimeStamp;
		createDelegateMorph;
		cancelled: false;
		testResultMorphsShown: false
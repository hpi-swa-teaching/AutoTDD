initialization
initialize
	super initialize.
	self 
		borderWidth: 1;
		borderColor: self darkGray;
		addTimeStamp;
		createDelegateMorph;
		cancelled: false;
		testResultMorphsShown: false
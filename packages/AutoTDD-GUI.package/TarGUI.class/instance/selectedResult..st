accessing
selectedResult: anObject

	selectedResult := anObject.
	self 
		changed: #selectedResult;
		changedSelectedResult
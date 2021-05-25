action
applyChanges
	
	super applyChanges.
	
	self travisStatus
		refreshInterval: refreshInterval contents asString asInteger;
		resume
behavior
applyChanges
	
	super applyChanges.

	self testingEntity
		repositoryURL: self repositoryUrl asString;
		refreshInterval: refreshInterval contents asString asInteger;
		token: self token
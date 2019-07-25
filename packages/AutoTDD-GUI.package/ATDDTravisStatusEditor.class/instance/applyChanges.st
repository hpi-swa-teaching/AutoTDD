action
applyChanges
	self travisStatus 
		repositoryURL: self repositoryUrl asString;
		token: self token;
		usePro: self usePro;
		name: self targetName;
		refreshInterval: refreshInterval contents asString asInteger.
	self travisStatus resume.
	^self travisStatus
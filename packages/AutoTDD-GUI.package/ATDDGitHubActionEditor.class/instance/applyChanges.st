action
applyChanges
	
	self gitHubAction
		repositoryURL: self repositoryUrl asString;
		name: self targetName;
		refreshInterval: refreshInterval contents asString asInteger.
	self gitHubAction resume.
	
	^ self gitHubAction
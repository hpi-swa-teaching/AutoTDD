initialization
loadTargetSpecs
	
	self
		repositoryUrl: self gitHubAction repositoryURL;
		targetName: self gitHubAction name;
		refreshInterval: self gitHubAction refreshInterval
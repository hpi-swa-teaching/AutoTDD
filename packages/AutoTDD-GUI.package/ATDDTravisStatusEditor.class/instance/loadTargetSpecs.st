initialization
loadTargetSpecs
	self
		repositoryUrl: self travisStatus repositoryURL;
		token: self travisStatus token;
		targetName: self travisStatus name;
		usePro: self travisStatus usePro;
		refreshInterval: self travisStatus refreshInterval
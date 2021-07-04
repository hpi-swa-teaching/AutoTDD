action
loadProfile
	
	| profile |
	
	profile := ATDDProfile instance.
	
	self
		travisToken: profile travisToken;
		gitHubToken: profile gitHubToken
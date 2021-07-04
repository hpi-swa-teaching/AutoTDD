running
setUp

	super setUp.
	profile := ATDDProfile instance.
	userTravisToken := profile travisToken.
	userGitHubToken := profile gitHubToken
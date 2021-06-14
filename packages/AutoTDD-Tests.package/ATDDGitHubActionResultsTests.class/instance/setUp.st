running
setUp
	
	super setUp.
	gitHubAction := ATDDGitHubAction new.	
	windowsToDelete := OrderedCollection new.
	mockGitHubActionsClient := ATDDMockGitHubActionsClient new.
	
	gitHubAction
		pause;
		repositoryURL: 'test/test'.
	gitHubAction repository client: mockGitHubActionsClient.
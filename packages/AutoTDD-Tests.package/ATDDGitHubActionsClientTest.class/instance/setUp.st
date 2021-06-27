running
setUp
	
	super setUp.
	gitHubActionsClient := ATDDGitHubActionsClient new.
	gitHubActionsClient apiUrl: 'http://localhost:9999/'.
	gitHubActionMockApi := ATDDGitHubActionMockAPI new
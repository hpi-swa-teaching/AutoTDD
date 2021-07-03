running
setUp
	
	| client |
	
	super setUp.
	gitHubAction := ATDDGitHubAction new.
	client := ATDDGitHubActionsClient new.
	client apiUrl: 'http://localhost:9999/'.
	gitHubAction
		pause;
		repositoryURL: 'hpi-swa-teaching/AutoTDD'.
	gitHubAction repository client: client.
	mockApi := ATDDGitHubActionMockAPI new.
	resultsWindow := ATDDGitHubActionResults openForTarget: gitHubAction.
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: resultsWindow
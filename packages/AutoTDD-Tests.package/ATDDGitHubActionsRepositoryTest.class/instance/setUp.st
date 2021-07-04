running
setUp
	
	super setUp.
	repository := ATDDGitHubActionsRepository new.
	repository repository: 'hpi-swa-teaching/AutoTDD'.
	repository client apiUrl: 'http://localhost:9999/'.
	mockAPI := ATDDGitHubActionMockAPI new
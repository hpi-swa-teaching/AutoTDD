action
openResultsForSelectedGitHubActions
	
	^ self selectedGitHubActions collect: [ :gitHubAction | self openResultsForGitHubAction: gitHubAction ]
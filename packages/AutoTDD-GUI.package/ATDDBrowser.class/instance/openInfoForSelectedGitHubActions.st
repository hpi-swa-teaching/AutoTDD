action
openInfoForSelectedGitHubActions
	
	^ self selectedGitHubActions collect: [ :gitHubAction | self openInfoForGitHubAction: gitHubAction ]
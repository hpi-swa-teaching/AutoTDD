action
refreshSelectedGitHubActions
	
	self selectedGitHubActions do: [ :gitHubAction | self refreshGitHubAction: gitHubAction ]
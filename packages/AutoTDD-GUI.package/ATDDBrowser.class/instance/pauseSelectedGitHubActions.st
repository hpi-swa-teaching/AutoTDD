action
pauseSelectedGitHubActions
	
	self selectedGitHubActions do: [ :gitHubAction | self pauseGitHubAction: gitHubAction ].
	self class changedGitHubActions
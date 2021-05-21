action
resumeSelectedGitHubActions
	
	self selectedGitHubActions do: [ :gitHubAction | self resumeGitHubAction: gitHubAction ].
	self class changedGitHubActions
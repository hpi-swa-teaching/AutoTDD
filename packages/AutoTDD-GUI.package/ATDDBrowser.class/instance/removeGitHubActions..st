action
removeGitHubActions: aGitHubActionList
	
	aGitHubActionList do: [ :gitHubAction | gitHubAction delete ].
	self gitHubActions removeAll: aGitHubActionList.
	self class changedGitHubActions
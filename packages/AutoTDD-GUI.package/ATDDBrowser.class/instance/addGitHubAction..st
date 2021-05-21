action
addGitHubAction: aGitHubAction
	
	self gitHubActions add: aGitHubAction.
	self class changedGitHubActions.
	
	^ aGitHubAction
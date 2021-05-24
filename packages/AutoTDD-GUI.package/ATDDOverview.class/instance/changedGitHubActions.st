updating
changedGitHubActions
	
	self gitHubActions: (self gitHubActions select: [ :each | each valid ]).
	gitHubActionMessage contents: self overallGitHubActionMessage.
	gitHubActionIndicator contents: self overallGitHubActionIndicator
action
openGitHubActionsResults
	
	^ self gitHubActions collect: [ :each | ATDDGitHubActionResults openForTarget: each ]
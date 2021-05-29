calculation
allGitHubActionsWithStatus: aString
	
	^ self gitHubActions select: [ :each | each internalStatus = aString ]
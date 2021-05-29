calculation
allGitHubActionsWithStatus: aSymbol
	
	^ self gitHubActions select: [ :each | each internalStatus = aSymbol ]
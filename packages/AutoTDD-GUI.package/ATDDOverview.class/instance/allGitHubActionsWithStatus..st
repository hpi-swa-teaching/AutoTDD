calculation
allGitHubActionsWithStatus: aSymbol
	
	^ self gitHubActions select: [ :each | each status = aSymbol ]
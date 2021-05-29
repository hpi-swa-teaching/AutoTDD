calculation
allWatchersWithLocalStatus: aSymbol
	
	^ self watchers select: [ :each | each internalStatus = aSymbol ]
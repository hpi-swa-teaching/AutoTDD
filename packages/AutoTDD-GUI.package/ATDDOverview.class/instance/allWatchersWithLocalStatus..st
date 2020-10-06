calculation
allWatchersWithLocalStatus: aSymbol
	
	^ self watchers select: [ :each | each localStatus = aSymbol ]
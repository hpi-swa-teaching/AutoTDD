calculation
allWatchersWithLocalStatus: aString
	
	^ self watchers select: [ :each | each internalStatus = aString ]
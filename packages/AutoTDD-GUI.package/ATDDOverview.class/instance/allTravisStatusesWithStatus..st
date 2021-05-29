calculation
allTravisStatusesWithStatus: aSymbol
	
	^ self travisStatuses select: [ :each | each internalStatus = aSymbol ]
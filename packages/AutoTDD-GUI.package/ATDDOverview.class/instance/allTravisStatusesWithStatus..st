calculation
allTravisStatusesWithStatus: aSymbol
	
	^ self travisStatuses select: [ :each | each status = aSymbol ]
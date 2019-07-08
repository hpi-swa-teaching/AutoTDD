calculation
allTravisStatusesWithStatus: aSymbol
	^ self travisStatuses
		select: [:each | each buildStatus = aSymbol]
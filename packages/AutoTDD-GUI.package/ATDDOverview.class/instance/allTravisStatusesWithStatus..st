calculation
allTravisStatusesWithStatus: aString
	
	^ self travisStatuses select: [ :each | each internalStatus = aString ]
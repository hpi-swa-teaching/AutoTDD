action
openResultsForSelectedTravisStatuses
	
	^ self selectedTravisStatuses
		collect: [ :travisStatus |
			self openResultsForTravisStatus: travisStatus ]
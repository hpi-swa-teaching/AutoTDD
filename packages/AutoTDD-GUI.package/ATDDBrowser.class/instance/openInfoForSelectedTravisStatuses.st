action
openInfoForSelectedTravisStatuses
	
	^ self selectedTravisStatuses collect: [ :travisStatus | self openInfoForTravisStatus: travisStatus ]
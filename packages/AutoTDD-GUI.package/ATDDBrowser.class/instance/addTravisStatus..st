action
addTravisStatus: aTravisStatus
	
	self travisStatuses add: aTravisStatus.
	self class changedTravisStatuses.
	
	^ aTravisStatus
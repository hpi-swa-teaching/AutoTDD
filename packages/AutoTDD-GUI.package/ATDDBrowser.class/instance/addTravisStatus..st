action
addTravisStatus: aTravisStatus
	
	self travisStatuses add: aTravisStatus.
	self class changed: #travisStatuses.
	
	^ aTravisStatus
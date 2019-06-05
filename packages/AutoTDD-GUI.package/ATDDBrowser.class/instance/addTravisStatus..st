action
addTravisStatus: aTravisStatus
	self travisStatuses add: aTravisStatus.
	self update.
	^ aTravisStatus
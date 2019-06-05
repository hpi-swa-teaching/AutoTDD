action
openInfoForSelectedTravisStatuses
	self selectedTravisStatuses do: [:travisStatus | self openInfoForTravisStatus: travisStatus]
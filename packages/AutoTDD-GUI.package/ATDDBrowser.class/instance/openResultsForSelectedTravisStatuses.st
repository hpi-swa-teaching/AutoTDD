action
openResultsForSelectedTravisStatuses
	self selectedTravisStatuses do: [:travisStatus | self openResultsForTravisStatus: travisStatus]
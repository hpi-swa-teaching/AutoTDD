action
refreshSelectedTravisStatuses
	self selectedTravisStatuses do: [:travisStatus | self refreshTravisStatus: travisStatus]
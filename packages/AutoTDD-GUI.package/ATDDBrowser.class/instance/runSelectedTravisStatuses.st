action
runSelectedTravisStatuses
	self selectedTravisStatuses do: [:travisStatus | self runTravisStatus: travisStatus]
action
resumeSelectedTravisStatuses
	self selectedTravisStatuses do: [:travisStatus | self resumeTravisStatus: travisStatus].
	self update
action
pauseSelectedTravisStatuses
	self selectedTravisStatuses do: [:travisStatus | self pauseTravisStatus: travisStatus].
	self class changed: #travisStatuses
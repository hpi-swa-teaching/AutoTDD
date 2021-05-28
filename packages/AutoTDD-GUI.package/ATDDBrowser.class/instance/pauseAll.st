action
pauseAll
	
	self watchers do: [ :watcher | self pauseTestingEntity: watcher ].
	self travisStatuses do: [ :travisStatus | self pauseTestingEntity: travisStatus ].
	self gitHubActions do: [ :gitHubAction | self pauseTestingEntity: gitHubAction ].
	self class changedWatchers.
	self class changedTravisStatuses.
	self class changedGitHubActions
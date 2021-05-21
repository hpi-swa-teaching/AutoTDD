action
pauseAll
	
	self watchers do: [ :watcher | self pauseWatcher: watcher ].
	self travisStatuses do: [ :travisStatus | self pauseTravisStatus: travisStatus ].
	self gitHubActions do: [ :gitHubAction | self pauseGitHubAction: gitHubAction ].
	self class changedWatchers.
	self class changedTravisStatuses.
	self class changedGitHubActions
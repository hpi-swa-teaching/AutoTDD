action
resumeAll
	
	self watchers do: [ :watcher | self resumeWatcher: watcher ].
	self travisStatuses do: [ :travisStatus | self resumeTravisStatus: travisStatus ].
	self gitHubActions do: [ :gitHubAction | self resumeGitHubAction: gitHubAction ].
	self class changedWatchers.
	self class changedTravisStatuses.
	self class changedGitHubActions
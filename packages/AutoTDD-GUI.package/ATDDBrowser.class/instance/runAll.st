action
runAll
	
	self gitHubActions do: [ :gitHubAction | self refreshGitHubAction: gitHubAction ].
	self travisStatuses do: [ :travisStatus | self refreshTravisStatus: travisStatus ].
	self watchers do: [ :watcher | self runWatcher: watcher ]
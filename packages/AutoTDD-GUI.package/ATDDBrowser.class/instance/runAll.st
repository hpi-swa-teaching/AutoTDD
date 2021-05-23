action
runAll
	
	self watchers do: [ :watcher | self runWatcher: watcher ].
	self travisStatuses do: [ :travisStatus | self refreshTravisStatus: travisStatus ].
	self gitHubActions do: [ :gitHubAction | self refreshGitHubAction: gitHubAction ]
action
runAll
	
	self watchers do: [ :watcher | self runWatcher: watcher ].
	self travisStatuses do: [ :travisStatus | self refreshTravisStatus: travisStatus ].
	self gitHubAction do: [ :gitHubAction | self refreshGitHubAction: gitHubAction ]
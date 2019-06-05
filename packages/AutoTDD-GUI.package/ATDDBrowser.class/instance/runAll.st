action
runAll
	self watchers do: [:watcher | self runWatcher: watcher].
	self travisStatuses do: [:travisStatus | self runTravisStatus: travisStatus]
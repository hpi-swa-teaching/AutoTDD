action
runAllWatchers
	self watchers do: [:watcher | self runWatcher: watcher]
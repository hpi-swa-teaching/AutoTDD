as yet unclassified
runAllWatchers
	self watchers do: [:watcher | self runWatcher: watcher]
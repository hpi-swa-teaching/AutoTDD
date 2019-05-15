as yet unclassified
pauseAllWatchers
	self watchers do: [:watcher | self pauseWatcher: watcher]
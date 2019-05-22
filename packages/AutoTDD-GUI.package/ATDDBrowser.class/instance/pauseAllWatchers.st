action
pauseAllWatchers
	self watchers do: [:watcher | self pauseWatcher: watcher]
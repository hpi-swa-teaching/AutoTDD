action
resumeAllWatchers
	self watchers do: [:watcher | self resumeWatcher: watcher]
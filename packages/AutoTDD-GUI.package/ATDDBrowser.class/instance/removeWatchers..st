action
removeWatchers: aWatcherList
	
	aWatcherList do: [ :watcher | watcher delete ].
	self watchers removeAll: aWatcherList.
	self class changedWatchers
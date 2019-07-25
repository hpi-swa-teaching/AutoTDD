action
resumeSelectedWatchers
	
	self selectedWatchers do: [ :watcher |
		self resumeWatcher: watcher ].
	self class changedWatchers
action
pauseSelectedWatchers
	
	self selectedWatchers do: [ :watcher |
		self pauseWatcher: watcher ].
	self class changedWatchers
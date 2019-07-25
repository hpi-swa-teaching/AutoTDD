action
runSelectedWatchers
	
	self selectedWatchers do: [ :watcher |
		self runWatcher: watcher ]
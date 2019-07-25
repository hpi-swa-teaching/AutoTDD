action
openResultsForSelectedWatchers
	
	^ self selectedWatchers
		collect: [ :watcher |
			self openResultsForWatcher: watcher ]
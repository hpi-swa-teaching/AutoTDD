action
openQuickOverviewForSelectedWatchers
	
	^ self selectedWatchers collect: [ :watcher | self openQuickWindowForWatcher: watcher ]
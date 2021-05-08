action
openQuickOverviewForSelectedWatchers
	
	^ self selectedWatchers collect: [ :watcher | self openQuickOverviewForWatcher: watcher ]
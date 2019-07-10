action
openInfoForSelectedWatchers
	^ self selectedWatchers collect: [:watcher | self openInfoForWatcher: watcher]
action
openInfoForSelectedWatchers
	self selectedWatchers do: [:watcher | self openInfoForWatcher: watcher]
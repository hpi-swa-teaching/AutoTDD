action
openResultsForSelectedWatchers
	self selectedWatchers do: [:watcher | self openResultsForWatcher: watcher]
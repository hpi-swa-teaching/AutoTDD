as yet unclassified
runSelectedWatchers
	self selectedWatchers do: [:watcher | self runWatcher: watcher]
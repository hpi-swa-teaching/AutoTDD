as yet unclassified
pauseSelectedWatchers
	self selectedWatchers do: [:watcher | self pauseWatcher: watcher]
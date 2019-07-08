action
openResultsForSelectedWatchers
	| collection |
	collection := OrderedCollection new.
	self selectedWatchers do: [:watcher | collection add: (self openResultsForWatcher: watcher)].
	^ collection
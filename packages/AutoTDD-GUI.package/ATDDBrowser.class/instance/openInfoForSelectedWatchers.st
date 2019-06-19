action
openInfoForSelectedWatchers
	| collection |
	collection := OrderedCollection new.
	self selectedWatchers do: [:watcher | collection add: (self openInfoForWatcher: watcher)].
	^ collection
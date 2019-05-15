as yet unclassified
removeWatchers: aWatcherList
	aWatcherList notEmpty ifTrue: [ self watchers removeAll: aWatcherList ].
	self selectedWatchers: (self findSelectedItemsForCollection: self watchers withSelected: self selectedWatchers).
	self changed: #watchers
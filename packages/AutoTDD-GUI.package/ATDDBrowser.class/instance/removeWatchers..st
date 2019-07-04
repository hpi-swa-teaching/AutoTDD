action
removeWatchers: aWatcherList
	self flag: #todo.
	aWatcherList notEmpty
		ifTrue: [ aWatcherList do: [:watcher | watcher delete].
				self watchers removeAll: aWatcherList ].
	self selectedWatchers: (self findSelectedItemsForCollection: self watchers withSelected: self selectedWatchers).
	self class changed: #watchers
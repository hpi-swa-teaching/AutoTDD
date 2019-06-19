action
editWatcher
	| windows |
	windows := OrderedCollection new.
	self selectedWatchers do: [:watcher | windows add: (self openEditorForWatcher: watcher)].
	^ windows
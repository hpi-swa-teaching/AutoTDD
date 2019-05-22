action
addWatcher: aWatcher
	self watchers add: aWatcher.
	self update.
	^ aWatcher
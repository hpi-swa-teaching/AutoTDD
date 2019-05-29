tests
testAddButtonAddsNewWatcherToList
	| preTestWatchers watcherWindow |
	preTestWatchers := self fetchCopyOfWatchers.
	watcherWindow := browser addWatcher.
	self assert: (self fetchCopyOfWatchers size = (preTestWatchers size + 1)).
	watcherWindow changed: #close.
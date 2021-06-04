tests
testAddButtonAddsNewWatcherToList
	
	| preTestWatchers watcherWindow |
	
	preTestWatchers := self fetchCopyOfWatchers.
	watcherWindow := browser createWatcher.
	watcherWindow save.
	self assert: self fetchCopyOfWatchers size = (preTestWatchers size + 1)
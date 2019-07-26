tests
testAddButtonAddsNewWatcherToList
	
	| preTestWatchers watcherWindow |
	
	preTestWatchers := self fetchCopyOfWatchers.
	watcherWindow := browser addWatcher.
	watcherWindow save.
	self assert: self fetchCopyOfWatchers size = (preTestWatchers size + 1)
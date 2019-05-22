tests
testAddButtonAddsNewWatcherToList
	| preTestWatchers |
	preTestWatchers := self simulateWatcherListFetch.
	self simulateAddButtonPress.
	self assert: (self simulateWatcherListFetch size = (preTestWatchers size + 1))
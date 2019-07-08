tests
testWatcherAccessors
	| w |
	w := ATDDWatcher new.
	testrunner watcher: w.
	self assert: testrunner watcher equals: w.
	w delete
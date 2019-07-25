tests
testRunButtonRunsSelectedWatcher
	
	| watcherWindow watcher1 |
	
	watcherWindow := browser addWatcher.
	watcherWindow
		selectedTestCategories: (Set
			newFrom: { #'AutoTDD-Dummy-Success-Tests' }).
	watcherWindow selectedCategories: (Set
		newFrom: { #'AutoTDD-Dummy-Category' }).
	watcher1 := watcherWindow save.
	browser selectedWatchers: { watcher1 }.
	browser runSelectedWatchers.
	(Delay forSeconds: 1) wait.
	self assert: self class hasTestRun
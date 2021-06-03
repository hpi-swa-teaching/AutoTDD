tests
testRunButtonRunsSelectedWatcher
	
	| watcherWindow watcher1 |
	
	watcherWindow := browser createWatcher.
	watcherWindow selectedTestCategories: (Set newFrom: { #'AutoTDD-Dummy-Success-Tests' }).
	watcherWindow selectedCategories: (Set newFrom: { #'AutoTDD-Dummy-Category' }).
	watcherWindow save.
	watcher1 := watcherWindow watcher.
	browser selectedWatchers: { watcher1 }.
	browser runSelectedWatchers.
	(Delay forSeconds: 1) wait.
	self assert: self class hasTestRun
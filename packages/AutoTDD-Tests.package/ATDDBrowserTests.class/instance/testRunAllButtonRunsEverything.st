tests
testRunAllButtonRunsEverything
	| watcherWindow watcher1  |
	self flag: #todo. "travis ci"
	
	watcherWindow := browser addWatcher.
	watcherWindow selectedTestCategories: (Set newFrom: { #'AutoTDD-Dummy-Success-Tests'. }).
	watcherWindow selectedCategories: (Set newFrom: { #'AutoTDD-Dummy-Category'. }).
	watcher1 := watcherWindow saveWatcher.
	"insert travis add here"
	
	browser runAll.
	(Delay forSeconds: 1) wait.
	self assert: self class hasTestRun.
	
	"insert travis check here"
	

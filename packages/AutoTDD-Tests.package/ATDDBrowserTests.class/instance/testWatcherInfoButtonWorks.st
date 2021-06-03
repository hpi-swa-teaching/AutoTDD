tests
testWatcherInfoButtonWorks
	
	| watcherWindow infoWindow watcher selection watchedClasses testedCategories |
	
	watcherWindow := browser createWatcher.
	watcherWindow selectedCategories: (Set newFrom: { #'AutoTDD-Dummy-Success-Tests' }).
	watcherWindow classwiseCategorySelection: true.
	watchedClasses := Set newFrom: { #'TestRunnerDummy22Test' . #'TestRunnerDummy23Test' }.
	watcherWindow selectedCategoryClasses: watchedClasses.
	testedCategories := Set newFrom: { #'AutoTDD-Dummy-Setting-Tests' }.
	watcherWindow selectedTestCategories: testedCategories.
	watcherWindow save.
	watcher := watcherWindow watcher.
	self assert: self fetchCopyOfWatchers size = 1.
	selection := OrderedCollection new.
	selection add: watcher.
	browser selectedWatchers: selection.
	infoWindow := (browser openInfoForSelectedTestingEntitiesOfType: #watcher) first.
	windowsToDelete add: infoWindow.
	self assert: infoWindow target == watcher.
	self assert: infoWindow categoryClasses asSet = watchedClasses.
	self assert: infoWindow testCategories asSet = testedCategories
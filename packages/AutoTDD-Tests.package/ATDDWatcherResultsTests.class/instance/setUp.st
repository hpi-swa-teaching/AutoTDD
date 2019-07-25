running
setUp
	
	super setUp.
	windowsToDelete := OrderedCollection new.
	watcher := ATDDWatcher new.
	watcher categoriesToWatch: #( #'AutoTDD-Dummy-Success-Tests' ).
	watcher isWatchingClasswise: false.
	watcher categoriesToTest: #( #'AutoTDD-Dummy-Success-Tests' ).
	watcher isTestingClasswise: true.
	watcher classesToTest: { TestRunnerDummy21Test . TestRunnerDummy22Test } asSet.
	resultsWindow := ATDDWatcherResults openForTarget: watcher.
	windowsToDelete add: resultsWindow
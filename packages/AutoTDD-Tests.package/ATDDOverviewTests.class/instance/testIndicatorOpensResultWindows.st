tests
testIndicatorOpensResultWindows
	
	| localWindows travisStatusWindows |
	
	localWindows := overview openTestingEntityResultsOfType: #watcher.
	windowsToDelete addAll: localWindows.
	self assert: localWindows size = watchers size.
	self assert: (localWindows allSatisfy: [ :each | watchers includes: each target ]).
	travisStatusWindows := overview openTestingEntityResultsOfType: #travisStatus.
	windowsToDelete addAll: travisStatusWindows.
	self assert: travisStatusWindows size = travisStatuses size.
	self assert: (travisStatusWindows allSatisfy: [ :each | travisStatuses includes: each target ])
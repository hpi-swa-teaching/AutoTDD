running
testIndicatorOpensResultWindows
	| localWindows travisStatusWindows |
	
	localWindows := overview openLocalResults.
	windowsToDelete addAll: localWindows.
	
	self assert: localWindows size = watchers size.
	self assert: (localWindows allSatisfy: [:each | watchers includes: each target]).
	
	travisStatusWindows := overview openTravisStatusResults.
	
	windowsToDelete addAll: travisStatusWindows.
	
	self assert: travisStatusWindows size = travisStatuses size.
	self assert: (travisStatusWindows allSatisfy: [:each | travisStatuses includes: each target]).
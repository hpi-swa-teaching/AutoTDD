tests
testIndicatorChangesOnRun
	
	| postIndicator preIndicator |
	
	preIndicator := overview overallTestingEntityIndicatorOfType: #watcher.
	watchers do: [ :each | each run ].
	postIndicator := overview overallTestingEntityIndicatorOfType: #watcher.
	self assert: preIndicator ~= postIndicator
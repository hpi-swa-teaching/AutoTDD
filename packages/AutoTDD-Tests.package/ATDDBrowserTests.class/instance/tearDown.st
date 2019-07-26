running
tearDown
	
	super tearDown.
	browser removeWatchers: browser watchers.
	preTestWatchers
		do: [ :each |
			each valid: true.
			browser addWatcher: each ].
	browser removeTravisStatuses: browser travisStatuses.
	preTestTravisStatuses
		do: [ :each |
			each valid: true.
			browser addTravisStatus: each ].
	browser resumeAll.
	windowsToDelete do: [ :each | each changed: #close ].
	self class resetTestHasRun
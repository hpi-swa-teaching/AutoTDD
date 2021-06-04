running
tearDown
	
	super tearDown.
	browser removeWatchers: browser watchers.
	preTestWatchers
		do: [ :each | each valid: true.
			browser watchers addLast: each ].
	browser removeTravisStatuses: browser travisStatuses.
	preTestTravisStatuses
		do: [ :each | each valid: true.
			browser travisStatuses addLast: each ].
	browser resumeAll.
	windowsToDelete do: [ :each | each changed: #close ].
	self class resetTestHasRun
running
tearDown
	super tearDown.
	browser removeWatchers: browser watchers.
	preTestWatchers do: [:each | browser addWatcher: each].
	browser resumeAll.
	windowsToDelete do: [:each | each changed: #close].
	self class resetTestHasRun.
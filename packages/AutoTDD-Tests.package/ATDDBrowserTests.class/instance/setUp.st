running
setUp
	
	super setUp.
	self class resetTestHasRun.
	browser := ATDDBrowser new.
	browser hasSeenTutorialPrompt: true.
	ToolBuilder open: browser.
	preTestWatchers := self fetchCopyOfWatchers.
	preTestTravisStatuses := self fetchCopyOfTravisStatuses.
	browser pauseAll.
	browser removeWatchers: browser watchers.
	browser removeTravisStatuses: browser travisStatuses.
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: browser
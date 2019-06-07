running
setUp
	super setUp.
	self class resetTestHasRun.
	browser := ATDDBrowser new.
	ToolBuilder open: browser.
	preTestWatchers := self fetchCopyOfWatchers.
	browser pauseAll.
	browser removeWatchers: browser watchers.
	
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: browser.
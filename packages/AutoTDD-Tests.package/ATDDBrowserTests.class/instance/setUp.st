running
setUp
	super setUp.
	browser := ATDDBrowser new.
	ToolBuilder open: browser.
	preTestWatchers := self fetchCopyOfWatchers.
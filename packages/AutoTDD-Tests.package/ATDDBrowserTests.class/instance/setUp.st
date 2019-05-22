running
setUp
	super setUp.
	preTestMorphs := World submorphs.
	browser := ATDDBrowser new.
	ToolBuilder open: browser.
	preTestWatchers := self simulateWatcherListFetch
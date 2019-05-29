running
setUp
	browser := ATDDBrowser new.
	self wantsToTest: (ToolBuilder open: browser).
	preTestWatchers := self simulateWatcherListFetch.
	preTestMorphs := World submorphs.
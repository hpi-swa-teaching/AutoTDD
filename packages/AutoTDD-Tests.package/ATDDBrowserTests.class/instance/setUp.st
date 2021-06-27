running
setUp
	
	super setUp.
	self class testHasRun: false.
	browser := ATDDBrowser new.
	ATDDHelper HasSeenTutorialPrompt: true.
	ToolBuilder open: browser.
	preTestWatchers := self fetchCopyOfWatchers.
	preTestTravisStatuses := self fetchCopyOfTravisStatuses.
	preTestGitHubActions := self fetchCopyOfGitHubActions.
	browser pauseAll.
	browser removeWatchers: browser watchers.
	browser removeTravisStatuses: browser travisStatuses.
	browser removeGitHubActions: browser gitHubActions.
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: browser
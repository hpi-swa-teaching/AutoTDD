action
expand
	
	self closeWindow.
	
	^ ATDDBrowser open model
		selectedWatchers: self watchers;
		selectedTravisStatuses: self travisStatuses;
		selectedGitHubActions: self gitHubActions;
		yourself
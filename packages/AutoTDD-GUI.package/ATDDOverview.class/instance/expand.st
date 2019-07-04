action
expand
	self closeWindow.
	^ ATDDBrowser open model selectedWatchers: self watchers;
		 selectedTravisStatuses: self travisStatuses;
		 yourself
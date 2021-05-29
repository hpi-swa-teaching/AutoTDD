behaviour
updateStatus
	
	self
		statusChanged;
		internalStatus: self repository buildStatus;
		statusMessage: self repository statusMessage;
		notify.
	ATDDBrowser changedGitHubActions
behaviour
updateStatus
	
	self
		statusChanged;
		status: self repository buildStatus;
		statusMessage: self repository statusMessage;
		notify.
	ATDDBrowser changedGitHubActions
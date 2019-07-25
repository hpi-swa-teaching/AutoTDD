accessing
updateStatus
	self
		handleStatusChange;
		status: self repository buildStatus;
		statusMessage: self repository statusMessage;
		notify.
	ATDDBrowser changedTravisStatuses
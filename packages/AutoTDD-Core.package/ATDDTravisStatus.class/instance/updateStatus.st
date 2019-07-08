accessing
updateStatus
	self flag: #todo. "Dont call changed here, solve it as solved for watchers using value holders"
	self
		pausedStatus: self pausedString;
		status: (self repository status);
		notify.
	ATDDBrowser changed: #travisStatuses
accessing
updateStatus
	self flag: #todo.
	"Dont call changed here, solve it as solved for watchers using value
	holders"
	
	self
		handleStatusChange;
		status: self repository buildStatus;
		statusMessage: self repository statusMessage;
		notify.
	ATDDBrowser changed: #travisStatuses
updating
updateJobLogForId: aNumber
	
	| client |
	
	client := ATDDGitHubActionsClient new. 
	
	self
		log: (client getLogsForRepository: self data repository forLogId: aNumber);
		changed: #log
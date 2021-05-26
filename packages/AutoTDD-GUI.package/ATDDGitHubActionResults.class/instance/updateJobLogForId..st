updating
updateJobLogForId: aNumber
	
	| client response |
	
	client := ATDDGitHubActionsClient new. 
	[ response := client getLogsForRepository: self data repository forLogId: aNumber ] 
		on: GHAAccessDeniedError 
		do: [ :error |  response := 'Acces denied. Consider using a token.' ].
	
	self
		log: response;
		changed: #log
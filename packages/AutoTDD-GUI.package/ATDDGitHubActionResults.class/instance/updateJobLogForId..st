updating
updateJobLogForId: aNumber
	
	| client response |
	
	client := ATDDGitHubActionsClient new. 
	[ response := client getLogsForRepository: self data repository logId: aNumber ] 
		on: GHAAccessDeniedError 
		do: [ :error |  response := 'Acces denied. Logs are only available when providing a token' ].
	
	self
		log: response;
		changed: #log
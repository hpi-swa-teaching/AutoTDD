updating
updateJobLogForId: aNumber
	
	| response |
	
	[ response := self data client getLogsForRepository: self data repository logId: aNumber ] 
		on: GHAAccessDeniedError 
		do: [ :error |  response := 'Acces denied. Logs are only available when providing a token' ].
	
	self
		log: response;
		changed: #log
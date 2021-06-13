updating
updateJobLogForId: aNumber
	
	| response |
	
	[ response := self data client getLogsForRepository: self data repository logId: aNumber ] 
		on: GHAAccessDeniedError 
		do: [ :error |  response := 'Acces denied. Logs are only available when providing a token' ].
		
	(self isSmalltalkCILog: response)
		ifTrue: [response := self parseSmalltalkCILog: response].
	
	self
		log: response;
		changed: #log
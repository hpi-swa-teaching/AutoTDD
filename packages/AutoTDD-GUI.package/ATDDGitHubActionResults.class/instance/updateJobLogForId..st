updating
updateJobLogForId: aNumber
	
	| response |
	
	[ response := self data client getLogsForRepository: self data repository logId: aNumber ] 
		on: ATDDAccessDeniedError
		do: [ :error |  response := error class message , '. Logs are only available when providing a token.' ]
		on: ATDDNotFoundError
		do: [ :error |  response := error class message , '. No logs available for this workflow.' ].
		
	
	(self isSmalltalkCILog: response)
		ifTrue: [response := self parseSmalltalkCILog: response].
	
	self
		log: response;
		changed: #log
accessing
requestOn: aString
	
	| response url |
	
	url := self gitHubActionsApiUrl , aString.
	[
			response := self webClient
				httpGet: url
				do: [ :request |
					request headerAt: 'Accept' put: self mimeType.
					"request headerAt: 'Authorization' put: 'token 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'"].
			response content; close ]
		on: Error
		do: [ :error |
			[ GHAConnectionError signal: 'Connection failed: ' , error messageText ] fork.
			^ JsonObject new ].
	
	^ response code
		= 200
		ifTrue: [ 
			(response contentType includesSubstring: 'application/json') 
				ifTrue: [ Json readFrom: response content readStream ]
				ifFalse: [ response content ]
			]
		ifFalse: [
			self throwExceptionForResponseCode: response code.
			JsonObject new ]
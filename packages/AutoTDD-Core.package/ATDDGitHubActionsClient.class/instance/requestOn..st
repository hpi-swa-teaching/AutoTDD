accessing
requestOn: aString
	
	| response url |
	
	url := self gitHubActionsApiUrl , aString.
	[
			response := self webClient
				httpGet: url
				do: [ :request |
					request headerAt: 'Accept' put: self mimeType.
					request headerAt: 'Authorization' put: 'token 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'].
				response content; close ]
		on: Error
		do: [ :error |
			[ GHAConnectionError signal: 'Connection failed: ' , error messageText ] fork.
			^ JsonObject new ].
	
	^ response code
		= 200
		ifTrue: [ Json readFrom: response content readStream ]
		ifFalse: [
			self throwExceptionForResponseCode: response code.
			JsonObject new ]
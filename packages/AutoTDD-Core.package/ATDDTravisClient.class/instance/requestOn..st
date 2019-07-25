data-processing
requestOn: aString
	
	| response url |
	
	url := self travisApiUrl , aString.
	[
			response := self webClient
				httpGet: url
				do: [ :request |
					request headerAt: 'Accept' put: self mimeType.
					self usePro
						ifTrue: [
							request
								headerAt: 'Authorization'
								put: 'token ' , self token ] ].
			response content; close ]
		on: Error
		do: [ :error |
			[ TCIConnectionError signal: 'Connection failed: '
				, error messageText ] fork.
			^ JsonObject new ].
	
	^ response code
		= 200
		ifTrue: [ Json readFrom: response content readStream ]
		ifFalse: [
			self throwExceptionForResponseCode: response code.
			JsonObject new ]
accessing
requestOn: aString
	
	| response url |
	
	url := self apiUrl , aString.
	[
			response := self httpGet: url do: [ :request |
				request headerAt: 'Accept' put: self mimeType.
				self token ifNotEmpty: [request headerAt: 'Authorization' put: ('token ' , self token)]
			].
			response content; close ]
		on: Error
		do: [ :error |
			[ ATDDConnectionError signal: 'Connection failed: ' , error messageText ] fork.
			^ JsonObject new ].
	^ response code
		= 200
		ifTrue: [
			(response contentType includesSubstring: 'application/json')
				ifTrue: [ ^ Json readFrom: response content readStream ].
			(response contentType includesSubstring: 'text/plain')
				ifTrue: [ ^ response content ]
		] 
		ifFalse: [
			 self throwExceptionForResponseCode: response code.
			 JsonObject new ]
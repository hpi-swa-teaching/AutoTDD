data-processing
requestAPIOn: aString
	
	| response url |
	
	url := self travisApiUrl , aString.
	response := self httpGet: url do: [ :request | request headerAt: 'Accept' put: '*/*' ].
	response content; close.
	
	^ response code = 200 ifTrue: [ response content ] ifFalse: [ String empty ]
as yet unclassified
requestOn: aString

	| client response url |
	client := WebClient new.
	client userAgent: self userAgent.
	url := self travisApiUrl, aString.
	response := client httpGet: url do: [ :request |
		request headerAt: 'Accept' put: self mimeType.
	].
	response content; close.
	^ Json new readFrom: response content readStream
as yet unclassified
requestOn: aString

	| response url |
	url := self travisApiUrl, aString.
	response := self webClient httpGet: url do: [ :request |
		request headerAt: 'Accept' put: self mimeType.
	].
	response content; close.
	^ Json readFrom: response content readStream
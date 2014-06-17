data-processing
requestAWSOn: aString

	| response url |
	url := self awsUrl, aString.
	response := self webClient httpGet: url do: [ :request |
		request headerAt: 'Accept' put: '*/*' ].
	response content; close.
	^ response content
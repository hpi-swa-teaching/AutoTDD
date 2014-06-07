as yet unclassified
requestOn: aString

	| response url |
	url := self travisApiUrl, aString.
	response := self webClient httpGet: url do: [ :request |
		request headerAt: 'Accept' put: self mimeType.
	].
	response content; close.
	"It is already loaded in the baseline but sometimes it misses anyway?"
	(Json canUnderstand: 'readFrom:') ifFalse: [ 
		 (Installer ss) project: 'JSON'; install: 'JSON'.
	]. 
	^[Json readFrom: response content readStream]
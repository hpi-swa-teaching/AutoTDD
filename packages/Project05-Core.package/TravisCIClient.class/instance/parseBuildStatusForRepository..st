as yet unclassified
parseBuildStatusForRepository: aString

	| response json state |
	response := self getJsonForRepository: aString.
	json := Json new readFrom: response readStream.
	state := (json at: 'builds') first at: 'state'.
	^ state
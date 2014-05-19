as yet unclassified
parseBuildStatusForRepository: aString

	| response json state |
	response := self getJsonForRepository: aString.
	json := Json new readFrom: response readStream.
	(json at: 'builds') ifEmpty: [^ 'unknown' ].
	state := (json at: 'builds') first at: 'state'.
	^ state
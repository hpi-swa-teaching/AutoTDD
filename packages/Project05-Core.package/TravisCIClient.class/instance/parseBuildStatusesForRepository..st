as yet unclassified
parseBuildStatusesForRepository: aString

	| json states |
	json := self getJsonForBuildsOfRepository: aString.
	(json at: 'builds') ifEmpty: [^ #('unknown') ].
	states := (json at: 'builds') collect: [ :build | build at: 'state' ].
	^ states
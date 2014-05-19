as yet unclassified
parseCurrentBuildStatusForRepository: aString

	| json |
	json := self getJsonForRepository: aString.
	((json at: 'repo') at: 'last_build_state')
		ifEmpty: [^ 'unknown' ]
		ifNotEmpty: [^ (json at: 'repo') at: 'last_build_state']
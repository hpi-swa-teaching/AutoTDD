as yet unclassified
parseCurrentBuildStatusForRepository: aString

	| json |
	json := self getJsonForBuildsOfRepository: aString.
	^((json at: 'builds') first at: 'state')
		ifEmpty: [ 'unknown' ]
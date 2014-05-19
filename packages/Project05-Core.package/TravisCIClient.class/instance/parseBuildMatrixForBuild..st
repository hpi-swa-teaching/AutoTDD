as yet unclassified
parseBuildMatrixForBuild: aString

	| json matrix |
	json := self getJsonForBuild: aString.
	matrix := (json at: 'jobs') collect: [ :job | job at: 'state' ].
	^ matrix
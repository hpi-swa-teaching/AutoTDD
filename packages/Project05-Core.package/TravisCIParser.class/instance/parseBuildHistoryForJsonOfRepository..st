as yet unclassified
parseBuildHistoryForJsonOfRepository: aJson

	(aJson at: 'builds') ifEmpty: [^ #('unknown') ].
	^ (aJson at: 'builds') collect: [ :build | '#', (build at: 'number'), (build at: 'state') ]
as yet unclassified
parseBuildHistoryForJsonOfRepository: aJson

	| index |
	index := 0.
	(aJson at: 'builds') ifEmpty: [^ #('Not built yet') ].
	^ (aJson at: 'builds') collect: [ :build |  index := index + 1. '#', (build at: 'number'), ' ', (build at: 'state'),
		' ', (((aJson at: 'commits') at: index) at: 'branch')]
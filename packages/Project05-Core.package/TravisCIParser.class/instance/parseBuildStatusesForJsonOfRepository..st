as yet unclassified
parseBuildStatusesForJsonOfRepository: aJson

	(aJson at: 'builds') ifEmpty: [^ #('unknown') ].
	^ (aJson at: 'builds') collect: [ :build | (build at: 'state') ]
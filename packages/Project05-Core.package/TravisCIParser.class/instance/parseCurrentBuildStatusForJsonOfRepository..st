as yet unclassified
parseCurrentBuildStatusForJsonOfRepository: aJson

	(aJson at: 'builds') ifEmpty: [^ 'unknown'].
	^ self parseStateForJsonOfBuild: (aJson at: 'builds') first
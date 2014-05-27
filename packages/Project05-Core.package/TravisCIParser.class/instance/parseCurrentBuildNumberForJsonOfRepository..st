as yet unclassified
parseCurrentBuildNumberForJsonOfRepository: aJson

	(aJson at: 'builds') ifEmpty: [^ '0'].
	^ self parseNumberForJsonOfBuild: (aJson at: 'builds') first
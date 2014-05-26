as yet unclassified
parseCurrentBuildStatusForJsonOfRepository: aJson

	(aJson at: 'builds') ifEmpty: [^ 'unknown'].
	^ ((aJson at: 'builds') first at: 'state')
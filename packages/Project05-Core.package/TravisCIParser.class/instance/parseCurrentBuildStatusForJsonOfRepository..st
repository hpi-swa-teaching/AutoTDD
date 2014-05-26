as yet unclassified
parseCurrentBuildStatusForJsonOfRepository: aJson

	^((aJson at: 'builds') first at: 'state')
		ifEmpty: [ 'unknown' ]
as yet unclassified
primitiveParseLogIdOf: aJson

	^ aJson at: 'log_id' ifAbsent: [ -1 ]

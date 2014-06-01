as yet unclassified
primitiveParseLogOf: aJson

	^ aJson at: 'log' ifAbsent: [ JsonObject new ]
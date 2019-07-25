primitive-parsing
primitiveParseLogOf: aJson

	^ aJson at: 'log' ifAbsent: [ JsonObject new ]
parsing
parseBodyOfLog: aJson

	^ self primitiveParseBodyOf: (self primitiveParseLogOf: aJson)
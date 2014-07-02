parsing
parseBodyOfLog: aJson

	^ self removeProgressFromLog: (self primitiveParseBodyOf: (self primitiveParseLogOf: aJson))
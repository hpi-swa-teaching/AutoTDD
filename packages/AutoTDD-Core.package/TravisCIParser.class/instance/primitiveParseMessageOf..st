primitive-parsing
primitiveParseMessageOf: aJson

	^ aJson at: 'message' ifAbsent: [ '' ]
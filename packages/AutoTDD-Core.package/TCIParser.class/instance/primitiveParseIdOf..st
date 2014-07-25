primitive-parsing
primitiveParseIdOf: aJson

	^ aJson at: 'id' ifAbsent: [ -1 ]
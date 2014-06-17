primitive-parsing
primitiveParseNumberOf: aJson

	^ aJson at: 'number' ifAbsent: [ '0' ]
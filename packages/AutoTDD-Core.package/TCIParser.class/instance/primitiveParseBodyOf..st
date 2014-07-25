primitive-parsing
primitiveParseBodyOf: aJson

	^ aJson at: 'body' ifAbsent: [ String empty ]
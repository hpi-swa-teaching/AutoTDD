as yet unclassified
primitiveParseNumberOf: aJson

	^ aJson at: 'number' ifAbsent: [ '0' ]
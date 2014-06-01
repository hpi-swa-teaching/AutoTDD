as yet unclassified
primitiveParseBodyOf: aJson

	^ aJson at: 'body' ifAbsent: [ '' ]
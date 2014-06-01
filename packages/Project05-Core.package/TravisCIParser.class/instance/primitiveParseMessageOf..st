as yet unclassified
primitiveParseMessageOf: aJson

	^ aJson at: 'message' ifAbsent: [ '' ]
as yet unclassified
primitiveParseIdOf: aJson

	^ aJson at: 'id' ifAbsent: [ -1 ]
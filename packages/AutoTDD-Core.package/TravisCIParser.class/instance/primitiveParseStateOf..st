as yet unclassified
primitiveParseStateOf: aJson

	^ aJson at: 'state' ifAbsent: [ 'unknown' ]
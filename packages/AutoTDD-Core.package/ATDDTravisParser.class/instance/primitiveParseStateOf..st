primitive-parsing
primitiveParseStateOf: aJson
	
	^ aJson at: 'state' ifAbsent: [ 'unknown' ]
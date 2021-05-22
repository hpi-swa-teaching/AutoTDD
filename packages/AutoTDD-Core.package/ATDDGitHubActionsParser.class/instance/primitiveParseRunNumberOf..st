parsing
primitiveParseRunNumberOf: aJson
	
	^ aJson at: 'run_number' ifAbsent: [ 0 ]
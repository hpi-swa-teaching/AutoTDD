parsing
primitiveParseRunNumberOf: aJson
	
	^ aJson at: 'run_number' ifAbsent: [ -1 ]
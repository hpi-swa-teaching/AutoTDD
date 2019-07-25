primitive-parsing
primitiveParseLogIdOf: aJson
	
	^ aJson at: 'log_id' ifAbsent: [ -1 ]
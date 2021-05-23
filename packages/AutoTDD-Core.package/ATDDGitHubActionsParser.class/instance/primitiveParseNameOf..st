primitive-parsing
primitiveParseNameOf: aJson
	
	^ aJson at: 'name' ifAbsent: [ String empty ]
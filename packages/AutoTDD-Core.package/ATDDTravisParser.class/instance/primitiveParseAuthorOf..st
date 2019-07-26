primitive-parsing
primitiveParseAuthorOf: aJson
	
	^ aJson at: 'author_name' ifAbsent: [ String empty ]
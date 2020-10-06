parsing
parseEnvOfJob: aJson
	
	^ self primitiveParseEnvOf: (self primitiveParseConfigOf: aJson)
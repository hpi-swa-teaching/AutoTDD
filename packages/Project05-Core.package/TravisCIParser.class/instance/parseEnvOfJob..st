as yet unclassified
parseEnvOfJob: aJson

	^ self primitiveParseEnvOf: (self primitiveParseConfigOf: aJson)

primitive-parsing
primitiveParseEnvOf: aJson

	^ aJson at: 'env' ifAbsent: [ '' ]
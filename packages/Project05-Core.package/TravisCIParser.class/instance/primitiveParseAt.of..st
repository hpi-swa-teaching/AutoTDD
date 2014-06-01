as yet unclassified
primitiveParseAt: aNumber of: aJson

	^ aJson at: aNumber ifAbsent: [ JsonObject new ]
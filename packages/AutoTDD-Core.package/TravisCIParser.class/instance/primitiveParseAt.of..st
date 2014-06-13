as yet unclassified
primitiveParseAt: aNumber of: anArray

	^ anArray at: aNumber ifAbsent: [ JsonObject new ]
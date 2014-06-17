primitive-parsing
primitiveParseAt: aNumber of: anArray

	^ anArray at: aNumber ifAbsent: [ JsonObject new ]
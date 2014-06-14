as yet unclassified
primitiveParseAt: aNumber of: anArray

	^ anArray at: aNumber ifAbsent: [ TestResult new ]
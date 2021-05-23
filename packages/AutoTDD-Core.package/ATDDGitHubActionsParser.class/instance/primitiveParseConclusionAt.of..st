primitive-parsing
primitiveParseConclusionAt: aNumber of: anArray
	
	^ ( anArray at: aNumber ) at: 'conclusion' ifAbsent: [ 'unknown' ]
primitive-parsing
primitiveParseLatestWorkflowRunConclusion: aJson
	
	^ (aJson at: 'conclusion' ifAbsent: [ 'unknown' ] ) ifNil: [ 'unknown' ]
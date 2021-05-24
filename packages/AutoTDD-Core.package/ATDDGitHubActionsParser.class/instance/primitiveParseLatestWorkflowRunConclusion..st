primitive-parsing
primitiveParseLatestWorkflowRunConclusion: aJson
	
	^ (aJson at: 'conclusion') ifNil: [ 'unknown' ]
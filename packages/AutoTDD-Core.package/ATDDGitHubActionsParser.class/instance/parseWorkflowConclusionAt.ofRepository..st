primitive-parsing
parseWorkflowConclusionAt: aNumber ofRepository: aJson
	
	| workflows |
	
	workflows := self parseWorkflowRunsOf: aJson.
	
	^ self primitiveParseLatestWorkflowRunConclusion: ( self primitiveParseAt: aNumber of: workflows )
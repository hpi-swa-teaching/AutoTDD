parsing
parseWorkflowRunNumberAt: aNumber ofRepository: aJson 

	| workflows |
	
	workflows := self parseWorkflowRunsOf: aJson.
	
	^ self primitiveParseRunNumberOf: ( self primitiveParseAt: aNumber of: workflows )
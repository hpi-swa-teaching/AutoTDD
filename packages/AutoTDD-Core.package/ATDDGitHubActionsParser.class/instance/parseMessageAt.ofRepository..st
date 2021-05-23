primitive-parsing
parseMessageAt: aNumber ofRepository: aJson 

	| workflows |
	
	workflows := self parseWorkflowRunsOf: aJson.
	
	^ self primitiveParseMessageOf: ( self primitiveParseAt: aNumber of: aJson )
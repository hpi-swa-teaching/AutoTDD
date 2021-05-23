primitive-parsing
parseHeadBranchAt: aNumber ofRepository: aJson 

	| workflows |
	
	workflows := self parseWorkflowRunsOf: aJson.
	
	^ self primitiveParseHeadBranchOf: ( self primitiveParseAt: aNumber of: aJson )
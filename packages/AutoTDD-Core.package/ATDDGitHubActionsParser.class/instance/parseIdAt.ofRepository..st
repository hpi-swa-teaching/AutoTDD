parsing
parseIdAt: aNumber ofRepository: aJson
	
	| workflows workflow |
	
	workflows := self parseWorkflowRunsOf: aJson.
	workflow := self primitiveParseAt: aNumber of: workflows.
	
	^ self primitiveParseIdOf: workflow
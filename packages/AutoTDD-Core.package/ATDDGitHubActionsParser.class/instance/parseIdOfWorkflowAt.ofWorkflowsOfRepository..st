parsing
parseIdOfWorkflowAt: aNumber ofWorkflowsOfRepository: aJson
	
	| workflows workflow |
	
	workflows := self parseWorkflowRunsOf: aJson.
	workflow := self primitiveParseAt: aNumber of: workflows.
	
	^ self primitiveParseIdOf: workflow
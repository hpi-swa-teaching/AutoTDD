primitive-parsing
parseIdOfWorkflowAt: aNumber ofWorkflowsOfRepository: aJson
	
	| workflows workflow |
	
	workflows := self parseLatestWorkflowRun: aJson.
	workflow := self primitiveParseAt: aNumber of: workflows.
	
	^ self primitiveParseIdOf: workflow
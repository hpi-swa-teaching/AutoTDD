primitive-parsing
parseMessageAt: aNumber ofRepository: aJson 

	| workflows headCommit |
	
	workflows := self parseWorkflowRunsOf: aJson.
	headCommit := self parseHeadCommitOf: ( self primitiveParseAt: aNumber of: workflows ).
	
	^ self primitiveParseMessageOf: headCommit
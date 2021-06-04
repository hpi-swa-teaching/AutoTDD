parsing
parseWorkflowFrom: aJson

	| workflow commit |
	
	workflow := self parseLatestWorkflowRun: aJson.
	commit := self parseHeadCommitOf: workflow.
	
	^ IdentityDictionary new
		at: #conclusion put: (self primitiveParseLatestWorkflowRunConclusion: workflow);
		at: #message put: (self primitiveParseMessageOf: commit);
		at: #branch put: (self primitiveParseHeadBranchOf: workflow);
		at: #author put: (self primitiveParseAuthorNameOf: commit);
		yourself
	
	
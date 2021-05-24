primitive-parsing
parseWorkflowHistoryOfRepository: aJson
	
	| index workflows |
	
	index := 0.
	workflows := self parseWorkflowRunsOf: aJson.
	
	^ workflows
		collect: [ :workflow |
			index := index + 1.
			IdentityDictionary new
				at: #number put: (self primitiveParseRunNumberOf: workflow);
				at: #conclusion put: (self primitiveParseLatestWorkflowRunConclusion: workflow);
				at: #id put: (self primitiveParseIdOf: workflow);
				at: #branch put: (self primitiveParseHeadBranchOf: workflow);
				yourself ]
tests
testWorkflowConclusion
	
	| parser workflow |
	
	parser := ATDDGitHubActionsParser new.
	workflow := parser parseLatestWorkflowRun: self sampleWorkflowRuns.
	
	self assert: (self possibleConclusions includes: (parser parseWorkflowConclusionAt: 1 ofRepository: self sampleWorkflowRuns))
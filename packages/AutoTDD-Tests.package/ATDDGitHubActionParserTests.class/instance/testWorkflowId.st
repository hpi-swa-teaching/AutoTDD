tests
testWorkflowId
	
	| parser id |
	
	parser := ATDDGitHubActionsParser new.
	id := parser parseIdAt: 1 ofRepository: self sampleWorkflowRuns.
		
	self assert: id isNumber
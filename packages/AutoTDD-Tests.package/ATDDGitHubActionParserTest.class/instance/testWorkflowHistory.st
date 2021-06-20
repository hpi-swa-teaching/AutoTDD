tests
testWorkflowHistory
	
	| parser history |
	
	parser := ATDDGitHubActionsParser new.
	history := parser parseWorkflowHistoryOfRepository: self sampleWorkflowRuns.
	
	self
		assert: history isArray;
		assert: (history allSatisfy: [ :build |
			(build includesKey: #number) and: [ build includesKey: #conclusion ] and: [ build includesKey: #branch ] ])
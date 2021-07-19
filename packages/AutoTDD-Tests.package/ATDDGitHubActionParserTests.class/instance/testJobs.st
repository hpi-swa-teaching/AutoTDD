tests
testJobs
	
	| parser jobs |
	
	parser := ATDDGitHubActionsParser new.
	jobs := parser parseJobsOf: self sampleWorkflowJobs.
		
	self
		assert: jobs isArray;
		assert: (jobs allSatisfy: [ :job | job isKindOf: JsonObject])
tests
testWorkflow
	
	| parser workflow |
	
	parser := ATDDGitHubActionsParser new.
	workflow := parser parseWorkflowFrom: self sampleWorkflowRuns.
	
	self assert: workflow isDictionary.
		
	#( #message # author #branch #conclusion ) do: [ :each |
		self assert: (workflow includesKey: each)
	].
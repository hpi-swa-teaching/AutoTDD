tests
testParseWorkflowAtOf
	
	| parser workflow |
	
	parser := ATDDGitHubActionsParser new.
	workflow := parser parseWorkflowAt: 1 ofRepository: self sampleWorkflowRuns.
		
	self
		assert: workflow isDictionary;
		assert: (workflow at: #number) = 155;
		assert: (workflow at: #conclusion) = 'success'; 
		assert: (workflow at: #message) isString;
		assert: ((workflow at: # message) includesSubstring: 'Merge pull request #91 from hpi-swa-teaching/fix/runall-button'); 
		assert: (workflow at: #branch) = 'dev'
tests
testAccessors
	
	| testClient |
	
	testClient := ATDDGitHubActionsClient new.
	editor client: testClient.
	(Delay forSeconds: 2) wait.
	self assert: editor client equals: testClient
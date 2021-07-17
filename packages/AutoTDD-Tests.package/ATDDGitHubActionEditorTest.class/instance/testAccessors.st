as yet unclassified
testAccessors
	
	| testClient |
	
	testClient := ATDDGitHubActionsClient new.
	editor client: testClient.
	self assert: editor client equals: testClient

	
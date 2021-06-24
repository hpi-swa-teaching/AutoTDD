as yet unclassified
testApiConnect
	
	| client response |
	
	client := ATDDMockGitHubActionsClient new. 
	response := client requestOn: ''. 
	self 
		assert: response equals: self defaultAnswer
		 
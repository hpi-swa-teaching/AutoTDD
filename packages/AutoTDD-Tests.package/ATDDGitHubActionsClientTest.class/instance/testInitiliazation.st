as yet unclassified
testInitiliazation 
	
	| client |
	
	client := ATDDMockGitHubActionsClient new. 
	self 
		assert: client webClient notNil;
		assert: client webClient userAgent equals: client userAgent; 
		assert: client gitHubActionsApiUrl equals: 'https://api.github.com/' 
		
		 
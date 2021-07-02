initialization
initializeGitHubToken
	
	gitHubToken := ValueHolder new contents: ''.
	gitHubToken addDependent: self
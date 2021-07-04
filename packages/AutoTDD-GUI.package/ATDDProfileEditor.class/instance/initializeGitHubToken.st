initialization
initializeGitHubToken
	
	gitHubToken := ValueHolder new contents: String empty.
	gitHubToken addDependent: self
accessing
repositoryURL: aString
	
	self
		repository: ((ATDDGitHubActionsRepository newForRepository: aString)
			yourself)
initialization
initializeRepositoryUrl
	repositoryUrl := ValueHolder new contents: ''.
	repositoryUrl addDependent: self
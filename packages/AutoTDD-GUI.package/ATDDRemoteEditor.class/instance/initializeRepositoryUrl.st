initialization
initializeRepositoryUrl
	
	repositoryUrl := ValueHolder new contents: String empty.
	repositoryUrl addDependent: self
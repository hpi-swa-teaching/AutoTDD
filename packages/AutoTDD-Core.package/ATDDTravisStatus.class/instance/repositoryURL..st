accessing
repositoryURL: aString
	
	self
		repository: ((ATDDTravisRepository newForRepository: aString)
			usePro: false;
			yourself)
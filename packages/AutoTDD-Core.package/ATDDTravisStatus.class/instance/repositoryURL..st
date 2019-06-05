accessing
repositoryURL: aString
	self repository: ((TCIRepository newForRepository: aString)
						usePro: false;
						yourself)
initialization
initializeData
	
	self
		data: ((TCIRepository newForRepository: self travisSource)
			usePro: self usePro;
			token: self token;
			yourself)
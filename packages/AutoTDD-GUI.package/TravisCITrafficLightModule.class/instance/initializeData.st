initialization
initializeData

	self data: ((TravisCIRepository newForRepository: self travisSource)
		usePro: self usePro;
		token: self token;
		yourself)
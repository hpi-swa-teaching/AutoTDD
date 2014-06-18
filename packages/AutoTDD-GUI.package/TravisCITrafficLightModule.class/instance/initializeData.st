initialization
initializeData

	self data: ((TravisCIRepository newForRepository: self travisSource)
		useTravisPro: self usePro;
		token: self token;
		yourself)
initialization
initializeData

	^ self data: (TravisCIRepository newForRepository: self travisSource)
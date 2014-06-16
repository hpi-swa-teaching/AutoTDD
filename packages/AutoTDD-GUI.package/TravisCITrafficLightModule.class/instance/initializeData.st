as yet unclassified
initializeData

	^ self data: (TravisCIRepository newForRepository: self travisSource)
accessing
travisSource: aSource
	
	travisSource := aSource.
	self useTravis ifTrue: [
		self travisData: (TravisCIRepository newForRepository: self travisSource) ]
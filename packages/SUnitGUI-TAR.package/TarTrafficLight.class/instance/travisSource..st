accessing
travisSource: aSource
	
	travisSource := aSource.
	self useTravis ifTrue: [
		self data: (TravisCIRepository newForRepository: self travisSource) ]
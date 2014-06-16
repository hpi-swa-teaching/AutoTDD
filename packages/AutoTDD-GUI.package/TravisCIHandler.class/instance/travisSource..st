accessing
travisSource: anObject

	travisSource := anObject.
	self use ifTrue: [
		self data: (TravisCIRepository newForRepository: self travisSource) ]
accessing
travisSource: anObject

	travisSource := anObject.
	self use ifTrue: [
		self data: (TCIRepository newForRepository: self travisSource) ]
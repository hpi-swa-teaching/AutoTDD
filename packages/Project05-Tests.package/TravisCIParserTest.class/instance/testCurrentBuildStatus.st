tests
testCurrentBuildStatus

	| parser state |
	parser := TravisCIParser new.
	state := parser parseCurrentBuildStateOfRepository: self sampleRepositoryBuilds.
	self
		assert: (self possibleBuildStatuses includes: state);
		assert: state equals: 'failed'
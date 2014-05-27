tests
testCurrentBuildStatus

	| parser state |
	parser := TravisCIParser new.
	state := parser parseCurrentBuildStatusOfRepository: self sampleRepositoryBuilds.
	self
		assert: (self possibleBuildStatuses includes: state);
		assert: state equals: 'failed'
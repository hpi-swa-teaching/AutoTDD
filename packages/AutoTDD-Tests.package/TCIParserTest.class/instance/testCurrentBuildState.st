tests
testCurrentBuildState

	| parser state |
	parser := TCIParser new.
	state := parser parseCurrentBuildStateOfRepository: self sampleRepositoryBuilds.
	self
		assert: (self possibleBuildStates includes: state);
		assert: state equals: 'failed'
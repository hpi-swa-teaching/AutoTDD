tests
testEmptyCurrentBuildState

	| parser state |
	parser := TravisCIParser new.
	state := parser parseCurrentBuildStateOfRepository: self emptyRepositoryBuilds.
	self
		assert: (self possibleBuildStates includes: state);
		assert: state equals: 'unknown'
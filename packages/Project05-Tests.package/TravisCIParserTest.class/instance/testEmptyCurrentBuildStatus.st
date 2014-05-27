tests
testEmptyCurrentBuildStatus

	| parser state |
	parser := TravisCIParser new.
	state := parser parseCurrentBuildStateOfRepository: self emptyRepositoryBuilds.
	self
		assert: (self possibleBuildStatuses includes: state);
		assert: state equals: 'unknown'
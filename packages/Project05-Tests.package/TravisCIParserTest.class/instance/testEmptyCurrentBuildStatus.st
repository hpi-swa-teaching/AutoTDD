tests
testEmptyCurrentBuildStatus

	| parser state |
	parser := TravisCIParser new.
	state := parser parseCurrentBuildStatusOfRepository: self emptyRepositoryBuilds.
	self
		assert: (self possibleBuildStatuses includes: state);
		assert: state equals: 'unknown'
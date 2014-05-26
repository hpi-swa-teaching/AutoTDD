tests
testBuildStatus

	| parser state emptyState |
	parser := TravisCIParser new.
	state := parser parseCurrentBuildStatusForJsonOfRepository: self sampleRepositoryBuilds.
	emptyState := parser parseCurrentBuildStatusForJsonOfRepository: self emptyRepositoryBuilds.
	self
		assert: (self possibleBuildStatuses includes: state);
		assert: state equals: 'failed';
		assert: (self possibleBuildStatuses includes: emptyState);
		assert: emptyState equals: 'unknown'
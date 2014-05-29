tests
testEmptyCurrentBuild

	| parser build |
	parser := TravisCIParser new.
	build := parser parseCurrentBuildOfRepository: self emptyRepositoryBuilds.
	self
		assert: (self possibleBuildStatuses includes: (build at: #state));
		assert: (build at: #state) equals: 'unknown';
		assert: (build at: #number) equals: '0';
		assert: (build at: #branch) equals: '';
		assert: (build at: #message) equals: ''
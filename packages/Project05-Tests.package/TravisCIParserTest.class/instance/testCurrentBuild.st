tests
testCurrentBuild

	| parser build |
	parser := TravisCIParser new.
	build := parser parseCurrentBuildOfRepository: self sampleRepositoryBuilds.
	self
		assert: (self possibleBuildStatuses includes: (build at: #state));
		assert: (build at: #state) equals: 'failed';
		assert: (build at: #number) equals: '60';
		assert: (build at: #branch) equals: 'master';
		assert: (build at: #message) equals: 'Sound for Status Change added'
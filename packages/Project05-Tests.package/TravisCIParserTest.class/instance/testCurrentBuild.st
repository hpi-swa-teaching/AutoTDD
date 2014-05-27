tests
testCurrentBuild

	| parser build number state branch message |
	parser := TravisCIParser new.
	build := parser parseCurrentBuildForJsonOfRepository: self sampleRepositoryBuilds.
	state := build at: #state.
	number := build at: #number.
	message := build at: #message.
	branch := build at: #branch.
	self
		assert: (self possibleBuildStatuses includes: state);
		assert: state equals: 'failed';
		assert: number equals: '60';
		assert: branch equals: 'master';
		assert: message equals: 'Sound for Status Change added'
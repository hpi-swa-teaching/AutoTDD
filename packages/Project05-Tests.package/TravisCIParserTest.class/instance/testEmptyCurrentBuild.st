tests
testEmptyCurrentBuild

	| parser build number state branch message |
	parser := TravisCIParser new.
	build := parser parseCurrentBuildOfRepository: self emptyRepositoryBuilds.
	state := build at: #state.
	number := build at: #number.
	message := build at: #message.
	branch := build at: #branch.
	self
		assert: (self possibleBuildStatuses includes: state);
		assert: state equals: 'unknown';
		assert: number equals: '0';
		assert: branch equals: '';
		assert: message equals: ''
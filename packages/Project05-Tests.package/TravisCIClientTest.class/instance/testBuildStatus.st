tests
testBuildStatus

	| client state |
	client := TravisCIClient new.
	state := client parseCurrentBuildStatusForRepository: self sampleRepository.
	self assert: (self possibleBuildStatuses includes: state)
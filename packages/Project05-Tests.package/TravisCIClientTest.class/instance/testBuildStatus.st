tests
testBuildStatus

	| client state |
	client := TravisCIClient new.
	state := client parseBuildStatusForRepository: self sampleRepository.
	self assert: (self possibleBuildStatuses includes: state)
tests
testBuildStatus

	"| client state |
	client := TravisCIClient new.
	state := client parseBuildStatusForRepository: self sampleRepository.
	self assert: ((state = 'passed') or: [state = 'failed'])"
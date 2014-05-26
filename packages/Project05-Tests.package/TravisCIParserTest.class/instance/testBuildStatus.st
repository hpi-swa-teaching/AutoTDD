tests
testBuildStatus

	| parser state |
	parser := TravisCIParser new.
	state := parser parseCurrentBuildStatusForJsonOfRepository: self sampleRepositoryBuilds.
	self assert: (self possibleBuildStatuses includes: state).
	self assert: state equals: 'failed'
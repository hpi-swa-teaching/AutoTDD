tests
testJobIdsOfBuild

	| parser jobids |
	parser := TravisCIParser new.
	jobids := parser parseJobIdsOfBuildAt: 1
		ofBuildsOfRepository: self sampleRepositoryBuilds.
	self
		assert: jobids isArray;
		assert: jobids equals: #(26048960 26048961)
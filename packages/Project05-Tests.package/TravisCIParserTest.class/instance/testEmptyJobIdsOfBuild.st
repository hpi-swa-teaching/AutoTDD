tests
testEmptyJobIdsOfBuild

	| parser jobids |
	parser := TravisCIParser new.
	jobids := parser parseJobIdsOfBuildAt: 1
		ofBuildsOfRepository: self emptyRepositoryBuilds.
	self
		assert: jobids isArray;
		assert: jobids equals: #()
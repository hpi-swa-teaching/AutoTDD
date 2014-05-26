tests
testBuildMatrix

	| parser matrix |
	parser := TravisCIParser new.
	matrix := parser parseBuildMatrixForJsonOfBuild: self sampleBuild.
	self
		assert: (matrix allSatisfy: [ :state | self possibleBuildStatuses includes: state]);
		assert: matrix equals: #('failed' 'failed')
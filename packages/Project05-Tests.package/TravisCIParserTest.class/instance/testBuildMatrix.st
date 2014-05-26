tests
testBuildMatrix

	| parser matrix |
	parser := TravisCIParser new.
	matrix := parser parseBuildMatrixForJsonOfBuild: self sampleBuild.
	self assert: (matrix allSatisfy: [ :state | self possibleBuildStatuses includes: state]).
	self assert: matrix equals: #('failed' 'failed')
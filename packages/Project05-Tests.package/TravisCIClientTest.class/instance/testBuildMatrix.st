tests
testBuildMatrix

	| client matrix |
	client := TravisCIClient new.
	matrix := client parseBuildMatrixForBuild: self sampleBuild.
	self assert: (matrix allSatisfy: [ :state | self possibleBuildStatuses includes: state])
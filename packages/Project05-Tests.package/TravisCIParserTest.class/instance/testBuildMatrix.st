tests
testBuildMatrix

	| parser matrix |
	parser := TravisCIParser new.
	matrix := parser parseBuildMatrixOfBuild: self sampleBuild.
	self
		assert: matrix isArray;
		assert: (matrix allSatisfy: [ :build |
			(build includesKey: #env) and: [
				build includesKey: #state] ])
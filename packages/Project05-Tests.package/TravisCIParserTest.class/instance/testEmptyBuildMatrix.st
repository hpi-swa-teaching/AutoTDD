tests
testEmptyBuildMatrix

	| parser matrix |
	parser := TravisCIParser new.
	matrix := parser parseBuildMatrixOfBuild: self emptyBuild.
	self
		assert: matrix isArray;
		assert: (matrix allSatisfy: [ :build |
			(build includesKey: #env) and: [
				build includesKey: #state] ])
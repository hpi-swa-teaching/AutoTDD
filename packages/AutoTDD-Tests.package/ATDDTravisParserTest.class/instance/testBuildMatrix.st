tests
testBuildMatrix
	
	| parser matrix samples |
	
	samples := { self sampleBuild . self emptyBuild }.
	parser := ATDDTravisParser new.
	samples
		do: [ :each |
			matrix := parser parseBuildMatrixOfBuild: each.
			self
				assert: matrix isArray;
				assert: (matrix allSatisfy: [ :build | (build includesKey: #env) and: [ build includesKey: #state ] ]) ]
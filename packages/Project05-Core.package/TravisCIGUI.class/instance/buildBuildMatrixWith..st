building
buildBuildMatrixWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		yourself
building
buildMatrixWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		yourself
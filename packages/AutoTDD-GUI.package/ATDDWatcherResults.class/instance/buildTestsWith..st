building
buildTestsWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #tests;
		getIndex: #selectedTest;
		setIndex: #selectedTest:;
		yourself
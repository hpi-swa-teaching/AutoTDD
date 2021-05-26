building
buildJobsWith: aBuilder
	
	^ aBuilder pluggableListSpec new
		model: self;
		list: #jobNames;
		getIndex: #selectedJob;
		setIndex: #selectedJob:;
		yourself
accessing
buildJobsWith: aBuilder
	
	^ aBuilder pluggableListSpec new
		model: self;
		list: #jobs;
		getIndex: #selectedJob;
		setIndex: #selectedJob:;
		yourself
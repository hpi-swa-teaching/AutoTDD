building
buildResumeTravisStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #resumeSelectedTravisStatuses;
		label: 'Resume';
		enabled: true;
		yourself
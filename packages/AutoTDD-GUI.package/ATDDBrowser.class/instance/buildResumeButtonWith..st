as yet unclassified
buildResumeButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #resumeSelectedWatchers;
		label: 'Resume';
		enabled: true;
		yourself
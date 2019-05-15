as yet unclassified
buildGlobalResumeButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #resumeAllWatchers;
		label: 'Resume All';
		enabled: true;
		yourself
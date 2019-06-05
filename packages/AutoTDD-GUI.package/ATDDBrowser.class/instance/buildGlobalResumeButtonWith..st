building
buildGlobalResumeButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #resumeAll;
		label: 'Resume All';
		enabled: true;
		yourself
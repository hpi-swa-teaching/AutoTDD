building
buildResumeButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		name: self resumeButtonName;
		action: #resumeButtonPress;
		label: self resumeButtonLabel;
		enabled: true;
		yourself
building
buildStopButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		name: self stopButtonName;
		action: #stopButtonPress;
		label: self stopButtonLabel;
		enabled: true;
		yourself
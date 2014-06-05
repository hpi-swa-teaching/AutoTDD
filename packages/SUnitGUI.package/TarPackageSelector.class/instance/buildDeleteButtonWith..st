building
buildDeleteButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		name: self deleteButtonName;
		action: #deleteButtonPress;
		label: self deleteButtonLabel;
		enabled: true;
		yourself
building
buildEditTravisStatusButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #editTravisStatus;
		label: 'Edit';
		enabled: true;
		yourself
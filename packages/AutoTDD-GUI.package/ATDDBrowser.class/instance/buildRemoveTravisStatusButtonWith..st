building
buildRemoveTravisStatusButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #removeSelectedTravisStatus;
		label: 'Remove';
		enabled: true;
		yourself
building
buildRunTravisStatusButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #runSelectedTravisStatuses;
		label: 'Run';
		enabled: true;
		yourself
building
buildResultsTravisStatusButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openResultsForSelectedTravisStatuses;
		label: 'Results';
		enabled: true;
		yourself
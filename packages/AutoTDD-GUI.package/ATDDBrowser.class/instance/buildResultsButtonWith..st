building
buildResultsButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openResultsForSelectedWatchers;
		label: 'Results';
		enabled: true;
		yourself
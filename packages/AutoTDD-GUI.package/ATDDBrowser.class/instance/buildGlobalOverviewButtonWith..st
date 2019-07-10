building
buildGlobalOverviewButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openOverview;
		label: 'Create Overview';
		enabled: true;
		yourself
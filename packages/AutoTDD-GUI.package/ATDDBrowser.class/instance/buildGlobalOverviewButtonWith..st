building
buildGlobalOverviewButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openOverview;
		label: 'Overview';
		enabled: true;
		yourself
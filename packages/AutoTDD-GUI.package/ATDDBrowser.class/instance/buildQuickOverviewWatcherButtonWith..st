building
buildQuickOverviewWatcherButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openQuickOverviewForSelectedWatchers;
		label: 'Quick Overview';
		enabled: true;
		yourself
building
buildRunWatcherButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #runSelectedWatchers;
		label: 'Run';
		enabled: true;
		yourself
building
buildPauseWatcherButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #pauseSelectedWatchers;
		label: 'Pause';
		enabled: true;
		yourself
building
buildGlobalPauseButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #pauseAllWatchers;
		label: 'Pause All';
		enabled: true;
		yourself
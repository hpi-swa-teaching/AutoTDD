building
buildPauseTravisStatusButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #pauseSelectedTravisStatuses;
		label: 'Pause';
		enabled: true;
		yourself
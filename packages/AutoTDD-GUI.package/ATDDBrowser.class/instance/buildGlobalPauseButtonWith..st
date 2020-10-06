building
buildGlobalPauseButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #pauseAll;
		label: 'Pause All';
		enabled: true;
		yourself
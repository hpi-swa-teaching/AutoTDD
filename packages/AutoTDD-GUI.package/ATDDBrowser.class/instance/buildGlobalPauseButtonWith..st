as yet unclassified
buildGlobalPauseButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addButtonPress;
		label: 'Pause All';
		enabled: true;
		yourself
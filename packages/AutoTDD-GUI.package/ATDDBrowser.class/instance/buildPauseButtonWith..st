as yet unclassified
buildPauseButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addButtonPress;
		label: 'Pause';
		enabled: true;
		yourself
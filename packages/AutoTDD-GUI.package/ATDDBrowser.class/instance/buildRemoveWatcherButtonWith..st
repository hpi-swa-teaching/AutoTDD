building
buildRemoveWatcherButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #removeSelectedWatchers;
		label: 'Remove';
		enabled: true;
		yourself
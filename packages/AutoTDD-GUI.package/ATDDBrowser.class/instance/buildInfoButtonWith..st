building
buildInfoButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openInfoForSelectedWatchers;
		label: 'Info';
		enabled: true;
		yourself
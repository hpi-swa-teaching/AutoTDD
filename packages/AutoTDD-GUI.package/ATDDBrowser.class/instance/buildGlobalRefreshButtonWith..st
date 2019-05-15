as yet unclassified
buildGlobalRefreshButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addButtonPress;
		label: 'Refresh All';
		enabled: true;
		yourself
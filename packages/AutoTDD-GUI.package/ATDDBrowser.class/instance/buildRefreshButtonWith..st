as yet unclassified
buildRefreshButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addButtonPress;
		label: 'Refresh';
		enabled: true;
		yourself
as yet unclassified
buildAddButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addWatcher;
		label: 'Add';
		enabled: true;
		yourself
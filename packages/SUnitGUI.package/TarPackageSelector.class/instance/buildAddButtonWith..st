building
buildAddButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addButtonPress;
		label: 'Add';
		enabled: true;
		yourself
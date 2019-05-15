as yet unclassified
buildEditButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addButtonPress;
		label: 'Edit';
		enabled: true;
		yourself
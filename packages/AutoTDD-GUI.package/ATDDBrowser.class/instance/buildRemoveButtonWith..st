as yet unclassified
buildRemoveButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addButtonPress;
		label: 'Remove';
		enabled: true;
		yourself
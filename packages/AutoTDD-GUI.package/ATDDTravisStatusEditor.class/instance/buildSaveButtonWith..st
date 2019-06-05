as yet unclassified
buildSaveButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #saveTravisStatus;
		label: 'Save';
		enabled: true;
		yourself
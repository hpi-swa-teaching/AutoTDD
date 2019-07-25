building
buildSaveButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #save;
		label: 'Save';
		enabled: true;
		yourself
building
buildSaveButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #saveWatcher;
		label: 'Save';
		enabled: true;
		yourself
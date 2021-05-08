initialization
buildLocalTestStatusWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Test';
		enabled: true;
		yourself
building
buildGlobalRunButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #runAll;
		label: 'Run All';
		enabled: true;
		yourself
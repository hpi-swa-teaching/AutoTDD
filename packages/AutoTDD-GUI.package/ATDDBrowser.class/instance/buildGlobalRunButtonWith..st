as yet unclassified
buildGlobalRunButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #runAllWatchers;
		label: 'Run All';
		enabled: true;
		yourself
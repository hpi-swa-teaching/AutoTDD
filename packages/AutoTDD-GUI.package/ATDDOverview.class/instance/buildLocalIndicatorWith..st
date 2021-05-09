building
buildLocalIndicatorWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: localIndicator;
		action: [ self openLocalResults ];
		label: #contents;
		enabled: true;
		yourself
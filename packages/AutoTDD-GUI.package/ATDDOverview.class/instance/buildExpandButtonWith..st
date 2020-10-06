building
buildExpandButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #expand;
		label: 'Expand';
		enabled: true;
		yourself
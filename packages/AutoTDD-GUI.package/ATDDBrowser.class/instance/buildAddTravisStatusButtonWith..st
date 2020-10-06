building
buildAddTravisStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addTravisStatus;
		label: 'Add travis status';
		enabled: true;
		yourself
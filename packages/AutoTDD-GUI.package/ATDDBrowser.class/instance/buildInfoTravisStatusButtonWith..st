building
buildInfoTravisStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openInfoForSelectedTravisStatuses;
		label: 'Info';
		enabled: true;
		yourself
building
buildRefreshTravisStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #refreshSelectedTravisStatuses;
		label: 'Refresh';
		enabled: true;
		yourself
building
buildHistoryWith: aBuilder
	
	^ aBuilder pluggableListSpec new
		model: self;
		list: #history;
		getIndex: #selectedHistory;
		setIndex: #selectedHistory:;
		autoDeselect: false;
		yourself
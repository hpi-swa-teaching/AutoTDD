building
buildHistoryWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #builds;
		autoDeselect: false;
		getIndex: #selectedBuild;
		setIndex: #selectedBuild:;
		yourself
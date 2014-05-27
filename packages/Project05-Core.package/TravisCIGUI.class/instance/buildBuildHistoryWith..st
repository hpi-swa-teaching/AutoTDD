building
buildBuildHistoryWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #builds;
		getSelected: #selectedBuild;
		setSelected: #selectedBuild:;
		yourself
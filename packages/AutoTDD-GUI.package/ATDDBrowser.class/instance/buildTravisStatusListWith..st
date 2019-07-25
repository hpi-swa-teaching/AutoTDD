building
buildTravisStatusListWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #travisStatuses;
		getIndex: #selectedTravisStatus;
		setIndex: #selectedTravisStatus:;
		getSelectionList: #travisStatusAt:;
		setSelectionList: #travisStatusAt:put:;
		yourself
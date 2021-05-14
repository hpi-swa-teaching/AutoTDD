building
buildGitHubActionsStatusListWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #gitHubActionsStatuses;
		getIndex: #selectedGitHubActionsStatus;
		setIndex: #selectedGitHubActionsStatus:;
		getSelectionList: #gitHubActionsStatusAt:;
		setSelectionList: #gitHubActionsStatusAt:put:;
		yourself
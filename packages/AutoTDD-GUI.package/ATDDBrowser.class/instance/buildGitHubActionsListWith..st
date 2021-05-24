building
buildGitHubActionsListWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #gitHubActions;
		getIndex: #selectedGitHubAction;
		setIndex: #selectedGitHubAction:;
		getSelectionList: #gitHubActionAt:;
		setSelectionList: #gitHubActionAt:put:;
		yourself
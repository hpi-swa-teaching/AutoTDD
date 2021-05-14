building
buildGitHubActionsStatusWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: (OrderedCollection new
			add: ((self buildGitHubActionsStatusListWith: aBuilder)
				frame: self gitHubActionsStatusListFrame
				yourself);
			add: ((self buildGitHubActionsStatusButtonsWith: aBuilder)
				frame: self gitHubActionsStatusButtonsFrame
				yourself);
			yourself);
		yourself
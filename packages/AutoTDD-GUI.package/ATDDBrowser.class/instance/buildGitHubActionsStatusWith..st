building
buildGitHubActionsStatusWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildGitHubActionsStatusListWith: aBuilder)
				frame: self listFrame
				yourself);
			add: ((self buildGitHubActionsStatusButtonsWith: aBuilder)
				frame: self buttonsFrame
				yourself);
			yourself);
		yourself
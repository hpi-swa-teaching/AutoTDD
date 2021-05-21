building
buildGitHubActionWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildGitHubActionsListWith: aBuilder)
				frame: self listFrame
				yourself);
			add: ((self buildGitHubActionsButtonsWith: aBuilder)
				frame: self buttonsFrame
				yourself);
			yourself);
		yourself
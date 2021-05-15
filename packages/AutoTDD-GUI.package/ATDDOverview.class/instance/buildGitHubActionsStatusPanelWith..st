building
buildGitHubActionsStatusPanelWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #proportional;
		children: (OrderedCollection new
				add: ((self buildGitHubActionsStatusHeadingWith: aBuilder)
						frame: self headingFrame;
						yourself);
				add: ((self buildGitHubActionsStatusIndicatorWith: aBuilder)
						frame: self indicatorFrame;
						yourself);
				add: ((self buildGitHubActionsStatusMessageWith: aBuilder)
						frame: self messageFrame;
						yourself);
				yourself);
		yourself
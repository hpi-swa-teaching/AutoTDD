building
buildListsAndButtonsWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildWatcherWith: aBuilder)
				frame: self watcherFrame;
				yourself);
			add: ((self buildTravisStatusWith: aBuilder)
				frame: self travisStatusFrame;
				yourself);
			add: ((self buildGitHubActionsStatusWith: aBuilder)
				frame: self gitHubActionsStatusFrame;
				yourself);
			yourself);
		yourself.
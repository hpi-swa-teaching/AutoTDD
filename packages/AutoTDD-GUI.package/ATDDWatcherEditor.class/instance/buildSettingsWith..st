building
buildSettingsWith: aBuilder
	^ (OrderedCollection new
			add: ((self buildWatcherTextWith: aBuilder)
				frame: self watcherTextFrame;
				yourself);
			add: ((self buildTestingPanelWith: aBuilder)
				frame: self testingPanelFrame;
				yourself);
			yourself)
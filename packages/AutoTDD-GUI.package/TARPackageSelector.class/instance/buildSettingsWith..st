building
buildSettingsWith: aBuilder
	^ (OrderedCollection new
			add: ((self buildTestingPanelWith: aBuilder)
				frame: self testingPanelFrame;
				yourself);
			yourself)
building
buildTestingEntityPanelOfType: aSymbol with: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #proportional;
		children: (OrderedCollection new
				add: ((self buildTestingEntityHeaderOfType: aSymbol with: aBuilder)
						frame: self headerFrame;
						yourself);
				add: ((self buildTestingEntityIndicatorOfType: aSymbol with: aBuilder)
						frame: self indicatorFrame;
						yourself);
				add: ((self buildTestingEntityMessageOfType: aSymbol with: aBuilder)
						frame: self messageFrame;
						yourself);
				yourself);
		yourself
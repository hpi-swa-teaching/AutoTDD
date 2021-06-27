building
buildTestingEntityUIOfType: aSymbol with: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildTestingEntityListOfType: aSymbol with: aBuilder)
				frame: self listFrame
				yourself);
			add: ((self buildTestingEntityButtonsOfType: aSymbol with: aBuilder)
				frame: self buttonsFrame
				yourself);
			yourself);
		yourself
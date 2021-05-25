building
buildTestEntityUIFor: aUIDictionary with: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildListFor: (aUIDictionary at: 'listDictionary') with: aBuilder)
				frame: self listFrame
				yourself);
			add: ((self buildButtonsFor: (aUIDictionary at: 'functionalityDictionary') layout: #horizontal with: aBuilder)
				frame: self buttonsFrame
				yourself);
			yourself);
		yourself
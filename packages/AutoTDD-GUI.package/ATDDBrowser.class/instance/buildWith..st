building
buildWith: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
			add: ((self buildButtonsFor: self class globalFunctionalityDictionary layout: #horizontal with: aBuilder)
				frame: self globalButtonsFrame;
				yourself);
			add: ((self buildTestingEntitiesFor: self class testingEntityUIDictionary layout: #vertical with: aBuilder)
				frame: self testingEntitiesFrame;
				yourself);
			yourself);
		yourself.
		
	^ aBuilder build: window
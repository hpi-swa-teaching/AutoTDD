building
buildWith: aBuilder
	| window |
	self builder: aBuilder.
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent;
		children: (OrderedCollection new 
			add: ((self buildCategoryWith: aBuilder)
				frame: self categoryFrame;
				yourself);
			add: ((self buildTestCategoryWith: aBuilder)
				frame: self testCategoryFrame;
				yourself);
			add: ((self buildAddButtonWith: aBuilder)
				frame: self addButtonFrame;
				yourself);
			add: ((self buildStopButtonWith: aBuilder)
				frame: self stopButtonFrame;
				yourself);
			add: ((self buildResumeButtonWith: aBuilder)
				frame: self resumeButtonFrame;
				yourself);
			add: ((self buildDeleteButtonWith: aBuilder)
				frame: self deleteButtonFrame;
				yourself);
			yourself);
		yourself.
	^ aBuilder build: window
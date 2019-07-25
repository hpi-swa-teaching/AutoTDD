building
buildWith: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
				add: ((self buildHistoryWith: aBuilder)
						frame: self historyFrame;
						yourself);
				add: ((self buildHistoryInfoWith: aBuilder)
						frame: self historyInfoFrame;
						yourself);
				addAll: (self buildAdditionalComponentsWith: aBuilder);
				add: ((self buildButtonsWith: aBuilder)
						frame: self buttonsFrame;
						yourself);
				yourself);
		yourself.
	
	^ aBuilder build: window
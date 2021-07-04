building
buildWith: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
				addAll: (self buildInputFieldsWith: aBuilder);
				add: ((self buildButtonsWith: aBuilder)
						frame: self buttonsFrame;
						yourself);
				yourself);
		yourself.
	
	^ aBuilder build: window
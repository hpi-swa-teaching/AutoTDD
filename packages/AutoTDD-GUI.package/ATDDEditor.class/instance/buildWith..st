building
buildWith: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
				add: ((self buildTargetNameWith: aBuilder)
						frame: self targetNameFrame;
						yourself);
				addAll: (self buildAdditionalInputFieldsWith: aBuilder);
				add: ((self buildButtonsWith: aBuilder)
						frame: self buttonsFrame;
						yourself);
				yourself);
		yourself.
	
	^ aBuilder build: window
building
buildWith: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (self buildAdditionalInputFieldsWith: aBuilder);
		yourself.
	
	^ aBuilder build: window
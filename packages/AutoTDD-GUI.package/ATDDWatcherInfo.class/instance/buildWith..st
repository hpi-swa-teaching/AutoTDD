as yet unclassified
buildWith: aBuilder
	
	| window |
	self builder: aBuilder.
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent; 
		children: (OrderedCollection new 
			addAll: (self buildPackageListsWith: aBuilder);
			yourself);
		yourself.
		
	^aBuilder build: window
building
buildWith: aBuilder
	
	| window |
	self builder: aBuilder.
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent; 
		children: (self buildChildrenWith:  aBuilder);
		yourself.
		
	^aBuilder build: window
as yet unclassified
buildWith: aBuilder
	
	| window |
	self builder: aBuilder.
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent; 
		children: (OrderedCollection new 
			add: ((self buildTravisStatusNameWith: aBuilder)
				frame: self travisStatusNameFrame;
				yourself);
			add: ((self buildUseProCheckboxWith: aBuilder)
				frame: self useProCheckBoxFrame;
				yourself);
			add: ((self buildRepositoryUrlWith: aBuilder)
				frame: self repositoryUrlFrame;
				yourself);
			add: ((self buildTokenWith: aBuilder)
				frame: self tokenFrame;
				yourself);
			add: ((self buildButtonsWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			yourself);
		yourself.
		
	^aBuilder build: window
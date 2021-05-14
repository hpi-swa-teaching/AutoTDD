building
buildTravisStatusWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildTravisStatusListWith: aBuilder)
				frame: self listFrame
				yourself);
			add: ((self buildTravisStatusButtonsWith: aBuilder)
				frame: self buttonsFrame
				yourself);
			yourself);
		yourself
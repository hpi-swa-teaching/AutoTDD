building
buildTravisStatusWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: (OrderedCollection new
			add: ((self buildTravisStatusListWith: aBuilder)
				frame: self travisStatusListFrame
				yourself);
			add: ((self buildTravisStatusButtonsWith: aBuilder)
				frame: self travisStatusButtonsFrame
				yourself);
			yourself);
		yourself
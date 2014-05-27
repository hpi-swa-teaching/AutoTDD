building
buildWith: aBuilder
	| window |
	self builder: aBuilder.
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent;
		children: (OrderedCollection new 
			add: ((self buildHistoryWith: aBuilder)
				frame: self historyFrame;
				yourself);
			add: ((self buildMatrixWith: aBuilder)
				frame: self matrixFrame;
				yourself);
			add: ((self buildStateWith: aBuilder)
				frame: self stateFrame;
				yourself);
			yourself);
		yourself.
	^ aBuilder build: window
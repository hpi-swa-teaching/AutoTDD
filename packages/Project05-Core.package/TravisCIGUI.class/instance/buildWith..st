building
buildWith: aBuilder
	| window |
	self builder: aBuilder.
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent;
		children: (OrderedCollection new 
			add: ((self buildBuildHistoryWith: aBuilder)
				frame: self buildHistoryFrame;
				yourself);
			add: ((self buildBuildMatrixWith: aBuilder)
				frame: self buildMatrixFrame;
				yourself);
			add: ((self buildStatusWith: aBuilder)
				frame: self statusFrame;
				yourself);
			yourself);
		yourself.
	^ aBuilder build: window
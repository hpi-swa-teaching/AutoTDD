building
createMatrix

	| matrix |
	matrix := TravisCIPluggableListMorph 
		on: self
		list: #jobs
		selected: #selectedJob
		changeSelected: #selectedJob:.
	self addMorph: matrix fullFrame: self matrixFrame.	
	^matrix
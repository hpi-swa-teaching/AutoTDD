building
createMatrix

	| matrix |
	matrix := TravisCIPluggableListMorph 
		on: self
		list: #matrix
		selected: #selectedJob
		changeSelected: #selectedJob:.
	self addMorph: matrix fullFrame: self matrixFrame.	
	^ matrix
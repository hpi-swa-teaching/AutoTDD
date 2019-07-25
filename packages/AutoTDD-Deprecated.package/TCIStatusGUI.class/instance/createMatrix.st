building
createMatrix
	
	| matrix |
	
	matrix := ATDDPluggableListMorph
		on: self
		list: #matrix
		selected: #selectedJob
		changeSelected: #selectedJob:.
	self window addMorph: matrix fullFrame: self matrixFrame
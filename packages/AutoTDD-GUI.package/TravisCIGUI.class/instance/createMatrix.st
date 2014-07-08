building
createMatrix

	| matrix |
	matrix := AutoTDDPluggableListMorph 
		on: self
		list: #matrix
		selected: #selectedJob
		changeSelected: #selectedJob:.
	self window addMorph: matrix fullFrame: self matrixFrame.	
	^ matrix
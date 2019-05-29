building
createMatrix

	| matrix |
	matrix := ATDDPluggableListMorph 
		on: self
		list: #matrix
		selected: #selectedTest
		changeSelected: #selectedTest:.
	self window addMorph: matrix fullFrame: self matrixFrame
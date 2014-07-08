building
createMatrix

	| matrix |
	matrix := AutoTDDPluggableListMorph 
		on: self
		list: #matrix
		selected: #selectedTest
		changeSelected: #selectedTest:.
	self window addMorph: matrix fullFrame: self matrixFrame.	
	^ matrix
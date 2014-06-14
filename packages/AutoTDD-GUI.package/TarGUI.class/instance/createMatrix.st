as yet unclassified
createMatrix

	| matrix |
	matrix := AutoTDDPluggableListMorph 
		on: self
		list: #matrix
		selected: #selectedTest
		changeSelected: #selectedTest:.
	self addMorph: matrix fullFrame: self matrixFrame.	
	^ matrix
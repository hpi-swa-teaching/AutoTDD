as yet unclassified
createMatrix

	| matrix |
	matrix := TravisCIPluggableListMorph 
		on: self
		list: #matrix
		selected: #selectedTest
		changeSelected: #selectedTest:.
	self addMorph: matrix fullFrame: self matrixFrame.	
	^ matrix
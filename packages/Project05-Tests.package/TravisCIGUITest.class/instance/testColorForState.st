tests
testColorForState

	| gui |
	gui := TravisCIGUI new.
	self assert: (self possibleBuildStatuses allSatisfy: [ :state | 
		(gui convertColorForState: state) isColor])
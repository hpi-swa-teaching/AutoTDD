tests
testColorForState

	| gui |
	gui := TravisCIGUI new.
	self assert: (self possibleBuildStates allSatisfy: [ :state | 
		(gui convertColorForState: state) isColor])